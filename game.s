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
	.type	updatePlayerBullet.part.0, %function
updatePlayerBullet.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5
	ldr	r2, [r0, #12]
	ldr	r3, [r3]
	sub	r3, r2, r3
	cmp	r3, #0
	movlt	r3, #1
	ldrge	r3, [r0, #20]
	subge	r2, r2, r3
	strge	r2, [r0, #12]
	strlt	r3, [r0, #52]
	bx	lr
.L6:
	.align	2
.L5:
	.word	hOff
	.size	updatePlayerBullet.part.0, .-updatePlayerBullet.part.0
	.set	updateProtoBullet.part.0,updatePlayerBullet.part.0
	.set	updateJoeBullet.part.0,updatePlayerBullet.part.0
	.set	updateMoleBullet.part.0,updatePlayerBullet.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMoleGuy.part.0, %function
updateMoleGuy.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r4, .L66
	ldr	r0, [r0, #12]
	ldr	r1, [r5, #8]
	ldr	r8, .L66+4
	ldr	r10, .L66+8
	ldr	fp, .L66+12
	ldr	r9, .L66+16
	sub	sp, sp, #20
	add	r7, r4, #276
.L12:
	ldr	r6, [r4, #52]
	cmp	r6, #0
	beq	.L57
.L8:
	add	r4, r4, #92
	cmp	r7, r4
	bne	.L12
	ldr	r4, .L66+20
	ldr	r8, .L66+4
	ldr	r10, .L66+24
	ldr	r9, .L66+28
	ldr	fp, .L66+8
	add	r7, r4, #460
.L16:
	ldr	r6, [r4, #52]
	cmp	r6, #0
	beq	.L58
.L13:
	add	r4, r4, #92
	cmp	r7, r4
	bne	.L16
	ldr	r4, .L66+32
	ldr	ip, [r4, #56]
	cmp	ip, #1
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	beq	.L59
.L17:
	cmp	ip, #2
	beq	.L60
.L18:
	sub	r3, r3, r1
	add	r3, r3, #15
	cmp	r3, #30
	sub	r3, r2, r0
	bhi	.L21
	cmp	r3, #0
	blt	.L61
	beq	.L21
	mov	ip, #1
	sub	r2, r0, r2
	add	r2, r2, #79
	cmp	r2, #158
	str	ip, [r5, #60]
	bhi	.L23
	mov	r2, #0
	add	lr, r3, #63
	cmp	lr, #126
	str	r2, [r5, #68]
	bhi	.L21
	str	ip, [r5, #88]
	ldr	r3, [r5, #56]
	b	.L26
.L58:
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #8]
	ldr	ip, [r4, #24]
	str	r3, [sp, #12]
	ldr	r3, [r4, #12]
	stmib	sp, {r2, ip}
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L14
.L56:
	ldr	r0, [r5, #12]
	ldr	r1, [r5, #8]
	b	.L13
.L57:
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #8]
	ldr	ip, [r4, #24]
	str	r3, [sp, #12]
	ldr	r3, [r4, #12]
	stmib	sp, {r2, ip}
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L62
	ldr	r2, [r5, #68]
	cmp	r2, #0
	ldreq	r3, [r5, #64]
	subeq	r3, r3, #2
	streq	r3, [r5, #64]
	ldrne	r3, .L66+36
	ldreq	r3, .L66+24
	movne	r2, r6
	ldreq	r1, [r3]
	ldrne	r1, [r3]
	ldr	r0, .L66+28
	movne	r0, fp
	mov	lr, pc
	bx	r9
	mov	r3, #1
	str	r3, [r4, #52]
	ldr	r3, [r5, #64]
	cmp	r3, #0
	movle	r2, #1
	ldrle	r3, [r10]
	suble	r3, r3, #1
	ldr	r0, [r5, #12]
	ldr	r1, [r5, #8]
	strle	r3, [r10]
	strle	r2, [r5, #52]
	b	.L8
.L21:
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r3, #100
	ldr	r3, [r5, #56]
	ble	.L30
.L27:
	mov	r1, #1
	mov	r2, #0
	str	r1, [r5, #68]
	str	r2, [r5, #88]
.L28:
	add	r3, r3, #1
	str	r3, [r5, #56]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L14:
	ldr	r3, [r5, #64]
	sub	r3, r3, #4
	mov	r2, r6
	str	r3, [r5, #64]
	mov	r0, r9
	ldr	r3, .L66+16
	ldr	r1, [r10]
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #52]
	ldr	r2, [r5, #64]
	cmp	r2, #0
	ldrle	r2, [fp]
	suble	r2, r2, #1
	strle	r3, [r5, #52]
	strle	r2, [fp]
	b	.L56
.L62:
	ldr	r0, [r5, #12]
	ldr	r1, [r5, #8]
	b	.L8
.L60:
	ldr	ip, [r4, #80]
	cmp	ip, #0
	beq	.L18
	add	ip, r4, #16
	ldm	ip, {ip, lr}
	sub	r2, r2, #16
	stm	sp, {r2, r3, ip, lr}
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r6, .L66+4
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L20
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r1, [r5, #8]
	ldr	r0, [r5, #12]
	b	.L18
.L65:
	ldr	r3, [r5, #56]
.L30:
	ldr	r2, [r5, #88]
	cmp	r2, #1
	bne	.L28
.L26:
	ldr	r2, [r5, #68]
	cmp	r2, #0
	bne	.L28
	cmp	r3, #99
	ble	.L28
	ldr	r3, [r5, #60]
	cmp	r3, #1
	beq	.L63
	cmp	r3, #2
	beq	.L64
.L33:
	ldr	r3, .L66+40
	mov	lr, pc
	bx	r3
	ldr	r2, .L66+44
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #4
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3, lsl #1
	b	.L28
.L61:
	mov	r2, #2
	add	ip, r3, #79
	cmp	ip, #158
	str	r2, [r5, #60]
	bhi	.L23
	mov	r2, #0
	add	r3, r3, #55
	cmp	r3, #110
	str	r2, [r5, #68]
	bhi	.L65
	mov	r2, #1
	ldr	r3, [r5, #56]
	str	r2, [r5, #88]
	b	.L26
.L23:
	mov	r1, #1
	mov	r2, #0
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r3, #100
	str	r1, [r5, #68]
	str	r2, [r5, #88]
	ldr	r3, [r5, #56]
	bgt	.L27
	b	.L28
.L59:
	ldr	ip, [r4, #80]
	cmp	ip, #0
	beq	.L18
	add	ip, r4, #16
	ldm	ip, {ip, lr}
	add	r2, r2, #16
	stm	sp, {r2, r3, ip, lr}
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r6, .L66+4
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L19
	ldr	ip, [r4, #56]
	ldr	r0, [r5, #12]
	ldr	r1, [r5, #8]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	b	.L17
.L20:
	ldr	r3, [r5, #64]
	sub	r3, r3, #6
	cmp	r3, #0
	str	r3, [r5, #64]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	r1, [r5, #8]
	ldr	r0, [r5, #12]
	bgt	.L18
	mov	r4, #1
	ldr	lr, .L66+8
	ldr	ip, [lr]
	sub	ip, ip, #1
	str	ip, [lr]
	str	r4, [r5, #52]
	b	.L18
.L19:
	ldr	r3, [r5, #64]
	sub	r3, r3, #6
	cmp	r3, #0
	str	r3, [r5, #64]
	ldr	ip, [r4, #56]
	ldr	r0, [r5, #12]
	ldr	r1, [r5, #8]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	bgt	.L17
	mov	r7, #1
	ldr	r6, .L66+8
	ldr	lr, [r6]
	sub	lr, lr, #1
	str	lr, [r6]
	str	r7, [r5, #52]
	b	.L17
.L64:
	ldr	r3, .L66+48
	ldr	lr, [r3]
	cmp	lr, #0
	ble	.L33
	ldr	r6, .L66+52
.L35:
	ldr	r3, .L66+52
	b	.L39
.L38:
	add	r2, r2, #1
	cmp	r2, lr
	add	r3, r3, #92
	bge	.L33
.L39:
	ldr	r1, [r3, #52]
	cmp	r1, #1
	bne	.L38
	mov	r0, #2
	mov	ip, #0
	ldr	r3, [r5, #28]
	ldr	r1, [r5, #8]
	add	r3, r3, r3, lsr #31
	add	r3, r1, r3, asr #1
	add	r1, r2, r2, lsl #1
	rsb	r2, r2, r1, lsl #3
	ldr	r1, [r5, #12]
	add	r2, r6, r2, lsl r0
	str	r3, [r2, #8]
	str	r1, [r2, #12]
	str	ip, [r2, #52]
	str	r0, [r2, #60]
	b	.L33
.L63:
	ldr	r3, .L66+48
	ldr	lr, [r3]
	cmp	lr, #0
	ble	.L33
	ldr	r6, .L66+52
	mov	r3, r2
	mov	ip, r6
	b	.L37
.L34:
	add	r3, r3, #1
	cmp	r3, lr
	add	ip, ip, #92
	beq	.L33
.L37:
	ldr	r4, [ip, #52]
	cmp	r4, #1
	bne	.L34
	mov	r7, #0
	add	ip, r3, r3, lsl #1
	rsb	r3, r3, ip, lsl #3
	add	r8, r5, #24
	ldm	r8, {r8, ip}
	add	r3, r6, r3, lsl #2
	str	r4, [r3, #60]
	add	ip, ip, ip, lsr #31
	add	ip, r1, ip, asr #1
	ldr	r1, [r5, #60]
	add	r0, r8, r0
	cmp	r1, #2
	str	ip, [r3, #8]
	str	r0, [r3, #12]
	str	r7, [r3, #52]
	bne	.L33
	b	.L35
.L67:
	.align	2
.L66:
	.word	playerBullets
	.word	collision
	.word	enemyCount
	.word	enemyDinked_data
	.word	playSoundB
	.word	protoBullets
	.word	enemyHit_length
	.word	enemyHit_data
	.word	player
	.word	enemyDinked_length
	.word	rand
	.word	-2004318071
	.word	moleBulletCount
	.word	moleBullets
	.size	updateMoleGuy.part.0, .-updateMoleGuy.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSniperJoe.part.0, %function
updateSniperJoe.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r4, .L136
	ldr	r1, [r0, #8]
	ldr	r7, .L136+4
	ldr	r9, .L136+8
	ldr	fp, .L136+12
	ldr	r8, .L136+16
	ldr	r10, .L136+20
	sub	sp, sp, #20
	add	r6, r4, #276
.L74:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L129
.L69:
	add	r4, r4, #92
	cmp	r4, r6
	bne	.L74
	ldr	r4, .L136+24
	ldr	r8, .L136+4
	ldr	r10, .L136+28
	ldr	r9, .L136+12
	ldr	fp, .L136+8
	add	r7, r4, #460
.L78:
	ldr	r6, [r4, #52]
	cmp	r6, #0
	beq	.L130
.L75:
	add	r4, r4, #92
	cmp	r7, r4
	bne	.L78
	ldr	r4, .L136+32
	ldr	r2, [r4, #56]
	cmp	r2, #1
	ldr	r3, [r4]
	beq	.L131
.L79:
	cmp	r2, #2
	beq	.L132
.L80:
	sub	r1, r3, r1
	add	r1, r1, #39
	cmp	r1, #78
	bhi	.L127
	ldr	r2, [r5, #12]
	ldr	r3, [r4, #4]
	sub	r3, r3, r2
	add	r2, r3, #79
	cmp	r2, #158
	bls	.L123
.L127:
	ldr	r3, [r5, #76]
.L83:
	ldr	r2, [r5, #72]
	cmp	r2, #89
	ldr	r1, [r5, #56]
	bgt	.L87
	ldr	r0, [r5, #68]
	cmp	r0, #0
	bne	.L128
.L86:
	cmp	r1, #59
	cmpgt	r2, #20
	bgt	.L90
.L128:
	add	r1, r1, #1
	b	.L89
.L123:
	cmp	r3, #0
	bge	.L84
	mov	r2, #2
	ldr	r3, [r5, #76]
	cmp	r3, #179
	str	r2, [r5, #60]
	ble	.L83
	mov	r6, #0
	ldr	r3, .L136+36
	str	r6, [r5, #72]
	mov	lr, pc
	bx	r3
	ldr	r3, .L136+40
	smull	r2, r3, r0, r3
	add	r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	rsb	r2, r3, r3, lsl #4
	sub	r0, r0, r2, lsl #2
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #12]
	str	r6, [r5, #68]
	str	r0, [r5, #76]
	sub	r3, r3, r2
.L84:
	cmp	r3, #0
	ble	.L127
	mov	r2, #1
	ldr	r3, [r5, #76]
	cmp	r3, #179
	str	r2, [r5, #60]
	ble	.L83
	mov	r4, #0
	ldr	r3, .L136+36
	str	r4, [r5, #72]
	mov	lr, pc
	bx	r3
	ldr	r2, .L136+40
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #5
	ldr	r2, [r5, #72]
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3, lsl #2
	cmp	r2, #89
	str	r4, [r5, #68]
	str	r3, [r5, #76]
	ldr	r1, [r5, #56]
	ble	.L86
.L87:
	mov	r0, #1
	str	r0, [r5, #68]
	add	r1, r1, r0
.L89:
	add	r2, r2, #1
	add	r3, r3, #1
	str	r2, [r5, #72]
	str	r3, [r5, #76]
	str	r1, [r5, #56]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L130:
	add	r0, r4, #24
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, ip}
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #12]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L76
.L126:
	ldr	r1, [r5, #8]
	b	.L75
.L129:
	add	r0, r4, #24
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, ip}
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #12]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L133
	ldr	r3, [r5, #68]
	cmp	r3, #0
	beq	.L71
	cmp	r3, #1
	bne	.L72
	ldr	r2, [r5, #60]
	ldr	r3, [r4, #60]
	cmp	r2, r3
	beq	.L71
.L72:
	mov	r2, #0
	ldr	r1, [r10]
	ldr	r0, .L136+44
	mov	lr, pc
	bx	r8
	mov	r3, #1
	str	r3, [r4, #52]
.L73:
	ldr	r3, [r5, #64]
	cmp	r3, #0
	movle	r2, #1
	ldrle	r3, [r9]
	suble	r3, r3, #1
	ldr	r1, [r5, #8]
	strle	r3, [r9]
	strle	r2, [r5, #52]
	b	.L69
.L76:
	ldr	r3, [r5, #64]
	sub	r3, r3, #4
	mov	r2, r6
	str	r3, [r5, #64]
	mov	r0, r9
	ldr	r3, .L136+16
	ldr	r1, [r10]
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #52]
	ldr	r2, [r5, #64]
	cmp	r2, #0
	ldrle	r2, [fp]
	suble	r2, r2, #1
	strle	r3, [r5, #52]
	strle	r2, [fp]
	b	.L126
.L133:
	ldr	r1, [r5, #8]
	b	.L69
.L132:
	ldr	r2, [r4, #80]
	cmp	r2, #0
	beq	.L80
	ldr	r2, [r4, #4]
	add	r0, r4, #16
	ldm	r0, {r0, ip}
	sub	r2, r2, #24
	stm	sp, {r2, r3}
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #12]
	ldr	r6, .L136+4
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L82
	ldr	r3, [r4]
	ldr	r1, [r5, #8]
	b	.L80
.L131:
	ldr	r2, [r4, #80]
	cmp	r2, #0
	beq	.L80
	ldr	r2, [r4, #4]
	add	r0, r4, #16
	ldm	r0, {r0, ip}
	add	r2, r2, #16
	stm	sp, {r2, r3}
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #12]
	ldr	r6, .L136+4
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L81
	ldr	r2, [r4, #56]
	ldr	r1, [r5, #8]
	ldr	r3, [r4]
	b	.L79
.L71:
	ldr	r3, [r5, #64]
	sub	r3, r3, #2
	str	r3, [r5, #64]
	ldr	r3, .L136+28
	mov	r2, #0
	ldr	r1, [r3]
	mov	r0, fp
	mov	lr, pc
	bx	r8
	mov	r3, #1
	str	r3, [r4, #52]
	b	.L73
.L90:
	ldr	r1, [r5, #60]
	cmp	r1, #1
	beq	.L134
	cmp	r1, #2
	beq	.L135
.L93:
	mov	r1, #1
	b	.L89
.L82:
	ldr	r3, [r5, #64]
	sub	r3, r3, #12
	cmp	r3, #0
	str	r3, [r5, #64]
	ldr	r1, [r5, #8]
	ldr	r3, [r4]
	bgt	.L80
	mov	ip, #1
	ldr	r0, .L136+8
	ldr	r2, [r0]
	sub	r2, r2, #1
	str	r2, [r0]
	str	ip, [r5, #52]
	b	.L80
.L81:
	ldr	r3, [r5, #64]
	sub	r3, r3, #6
	cmp	r3, #0
	str	r3, [r5, #64]
	ldr	r2, [r4, #56]
	ldr	r1, [r5, #8]
	ldr	r3, [r4]
	bgt	.L79
	mov	lr, #1
	ldr	ip, .L136+8
	ldr	r0, [ip]
	sub	r0, r0, #1
	str	r0, [ip]
	str	lr, [r5, #52]
	b	.L79
.L135:
	ldr	r1, .L136+48
	ldr	ip, [r1]
	cmp	ip, #0
	ble	.L93
	ldr	r4, .L136+52
.L95:
	mov	r1, #0
	ldr	r0, .L136+52
	b	.L99
.L98:
	add	r1, r1, #1
	cmp	r1, ip
	add	r0, r0, #92
	bge	.L93
.L99:
	ldr	lr, [r0, #52]
	cmp	lr, #1
	bne	.L98
	mov	lr, #2
	mov	r6, #0
	ldr	ip, [r5, #28]
	ldr	r0, [r5, #8]
	add	ip, ip, ip, lsr #31
	add	r0, r0, ip, asr #1
	add	ip, r1, r1, lsl #1
	rsb	r1, r1, ip, lsl #3
	ldr	ip, [r5, #12]
	add	r1, r4, r1, lsl lr
	add	r0, r0, #1
	sub	ip, ip, #8
	str	r0, [r1, #8]
	str	ip, [r1, #12]
	str	r6, [r1, #52]
	str	lr, [r1, #60]
	b	.L93
.L134:
	ldr	r1, .L136+48
	ldr	ip, [r1]
	cmp	ip, #0
	ble	.L93
	ldr	r4, .L136+52
	mov	r1, #0
	mov	r0, r4
	b	.L97
.L94:
	add	r1, r1, #1
	cmp	r1, ip
	add	r0, r0, #92
	beq	.L93
.L97:
	ldr	lr, [r0, #52]
	cmp	lr, #1
	bne	.L94
	mov	r6, #0
	ldr	r8, [r5, #28]
	add	r0, r1, r1, lsl #1
	ldr	r7, [r5, #8]
	rsb	r1, r1, r0, lsl #3
	add	r1, r4, r1, lsl #2
	add	r8, r8, r8, lsr #31
	ldr	r0, [r5, #12]
	add	r7, r7, r8, asr #1
	ldr	r8, [r5, #24]
	str	lr, [r1, #60]
	add	r0, r0, r8
	ldr	r8, [r5, #60]
	add	lr, r7, #1
	add	r0, r0, #8
	cmp	r8, #2
	str	lr, [r1, #8]
	str	r0, [r1, #12]
	str	r6, [r1, #52]
	bne	.L93
	b	.L95
.L137:
	.align	2
.L136:
	.word	playerBullets
	.word	collision
	.word	enemyCount
	.word	enemyHit_data
	.word	playSoundB
	.word	enemyDinked_length
	.word	protoBullets
	.word	enemyHit_length
	.word	player
	.word	rand
	.word	-2004318071
	.word	enemyDinked_data
	.word	joeBulletCount
	.word	joeBullets
	.size	updateSniperJoe.part.0, .-updateSniperJoe.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHoriOctoEye.part.0, %function
updateHoriOctoEye.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r4, .L189
	ldr	r1, [r0, #8]
	ldr	r8, .L189+4
	ldr	r10, .L189+8
	ldr	r9, .L189+12
	ldr	fp, .L189+16
	sub	sp, sp, #20
	add	r7, r4, #276
.L142:
	ldr	r6, [r4, #52]
	cmp	r6, #0
	beq	.L181
.L139:
	add	r4, r4, #92
	cmp	r4, r7
	bne	.L142
	ldr	r4, .L189+20
	ldr	r8, .L189+4
	ldr	r10, .L189+8
	ldr	r9, .L189+12
	ldr	fp, .L189+16
	add	r7, r4, #460
.L146:
	ldr	r6, [r4, #52]
	cmp	r6, #0
	beq	.L182
.L143:
	add	r4, r4, #92
	cmp	r7, r4
	bne	.L146
	ldr	r4, .L189+24
	ldr	r2, [r4, #56]
	cmp	r2, #1
	ldr	r3, [r4]
	beq	.L183
.L147:
	cmp	r2, #2
	beq	.L184
.L148:
	sub	r3, r3, r1
	add	r3, r3, #15
	cmp	r3, #30
	bhi	.L151
	ldr	r0, [r4, #4]
	ldr	r3, [r5, #12]
	sub	r2, r0, r3
	add	r2, r2, #71
	cmp	r2, #142
	bls	.L185
.L151:
	ldr	r3, [r5, #60]
	ldr	r0, [r5, #76]
	cmp	r3, #2
	add	ip, r0, #1
	beq	.L186
	cmp	r3, #1
	beq	.L187
.L156:
	mov	r3, #0
	str	r3, [r5, #80]
.L157:
	str	ip, [r5, #76]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L182:
	add	r0, r4, #24
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, ip}
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #12]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L144
.L180:
	ldr	r1, [r5, #8]
	b	.L143
.L181:
	add	r0, r4, #24
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, ip}
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #12]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L140
.L179:
	ldr	r1, [r5, #8]
	b	.L139
.L144:
	ldr	r3, [r5, #64]
	sub	r3, r3, #4
	mov	r2, r6
	str	r3, [r5, #64]
	mov	r0, r9
	ldr	r3, .L189+28
	ldr	r1, [r10]
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #52]
	ldr	r2, [r5, #64]
	cmp	r2, #0
	ldrle	r2, [fp]
	suble	r2, r2, #1
	strle	r3, [r5, #52]
	strle	r2, [fp]
	b	.L180
.L184:
	ldr	r2, [r4, #80]
	cmp	r2, #0
	beq	.L148
	ldr	r2, [r4, #4]
	add	r0, r4, #16
	ldm	r0, {r0, ip}
	sub	r2, r2, #16
	stm	sp, {r2, r3}
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #12]
	ldr	r6, .L189+4
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L150
	ldr	r3, [r4]
	ldr	r1, [r5, #8]
	b	.L148
.L187:
	ldr	r3, [r5, #12]
.L154:
	ldr	lr, [r5, #24]
	add	r2, lr, r3
	cmp	r2, #512
	bge	.L156
	ldr	r2, [r5, #20]
	ldr	r4, .L189+32
	add	r2, r3, r2
	ldr	r4, [r4]
	add	lr, lr, r2
	sub	lr, lr, #1
	add	r3, r4, r1, lsl #9
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L156
	ldr	r3, [r5, #28]
	add	r3, r1, r3
	sub	r3, r3, #1
	add	r3, r4, r3, lsl #9
	ldrb	r3, [r3, lr]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L156
	cmp	r0, #19
	strgt	r2, [r5, #12]
	b	.L157
.L185:
	cmp	r0, r3
	blt	.L188
	ble	.L151
	ldr	r0, [r5, #80]
	cmp	r0, #0
	bne	.L151
	mov	ip, #1
	str	r0, [r5, #76]
	str	ip, [r5, #60]
	str	ip, [r5, #80]
	b	.L154
.L183:
	ldr	r2, [r4, #80]
	cmp	r2, #0
	beq	.L148
	ldr	r2, [r4, #4]
	add	r0, r4, #16
	ldm	r0, {r0, ip}
	add	r2, r2, #16
	stm	sp, {r2, r3}
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #12]
	ldr	r6, .L189+4
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L149
	ldr	r2, [r4, #56]
	ldr	r1, [r5, #8]
	ldr	r3, [r4]
	b	.L147
.L140:
	mov	r2, r6
	ldr	r3, .L189+28
	mov	r0, r9
	ldr	r1, [r10]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	str	r2, [r4, #52]
	ldr	r3, [r5, #64]
	sub	r3, r3, #2
	cmp	r3, #0
	str	r3, [r5, #64]
	ldrle	r3, [fp]
	suble	r3, r3, #1
	strle	r2, [r5, #52]
	strle	r3, [fp]
	b	.L179
.L186:
	ldr	r3, [r5, #12]
.L153:
	cmp	r3, #0
	ble	.L156
	ldr	lr, .L189+32
	ldr	r2, [r5, #20]
	ldr	lr, [lr]
	sub	r3, r3, r2
	sub	r4, r3, #1
	add	r2, lr, r1, lsl #9
	ldrb	r2, [r2, r4]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L156
	ldr	r2, [r5, #28]
	add	r2, r1, r2
	sub	r2, r2, #1
	add	lr, lr, r2, lsl #9
	ldrb	r2, [lr, r4]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L156
	cmp	r0, #19
	strgt	r3, [r5, #12]
	b	.L157
.L188:
	ldr	r0, [r5, #80]
	cmp	r0, #0
	bne	.L151
	mov	r2, #2
	mov	ip, #1
	str	r0, [r5, #76]
	str	r2, [r5, #60]
	str	ip, [r5, #80]
	b	.L153
.L150:
	ldr	r3, [r5, #64]
	sub	r3, r3, #12
	cmp	r3, #0
	str	r3, [r5, #64]
	ldr	r1, [r5, #8]
	ldr	r3, [r4]
	bgt	.L148
	mov	ip, #1
	ldr	r0, .L189+16
	ldr	r2, [r0]
	sub	r2, r2, #1
	str	r2, [r0]
	str	ip, [r5, #52]
	b	.L148
.L149:
	ldr	r3, [r5, #64]
	sub	r3, r3, #6
	cmp	r3, #0
	str	r3, [r5, #64]
	ldr	r2, [r4, #56]
	ldr	r1, [r5, #8]
	ldr	r3, [r4]
	bgt	.L147
	mov	lr, #1
	ldr	ip, .L189+16
	ldr	r0, [ip]
	sub	r0, r0, #1
	str	r0, [ip]
	str	lr, [r5, #52]
	b	.L147
.L190:
	.align	2
.L189:
	.word	playerBullets
	.word	collision
	.word	enemyHit_length
	.word	enemyHit_data
	.word	enemyCount
	.word	protoBullets
	.word	player
	.word	playSoundB
	.word	collisionMap
	.size	updateHoriOctoEye.part.0, .-updateHoriOctoEye.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateVertOctoEye.part.0, %function
updateVertOctoEye.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r4, .L245
	ldr	r1, [r0, #8]
	ldr	r8, .L245+4
	ldr	r10, .L245+8
	ldr	r9, .L245+12
	ldr	fp, .L245+16
	sub	sp, sp, #20
	add	r7, r4, #276
.L195:
	ldr	r6, [r4, #52]
	cmp	r6, #0
	beq	.L239
.L192:
	add	r4, r4, #92
	cmp	r7, r4
	bne	.L195
	ldr	r4, .L245+20
	ldr	r8, .L245+4
	ldr	r10, .L245+8
	ldr	r9, .L245+12
	ldr	fp, .L245+16
	add	r7, r4, #460
.L199:
	ldr	r6, [r4, #52]
	cmp	r6, #0
	beq	.L240
.L196:
	add	r4, r4, #92
	cmp	r7, r4
	bne	.L199
	ldr	r4, .L245+24
	ldr	r2, [r4, #56]
	cmp	r2, #1
	ldr	r3, [r4]
	beq	.L241
.L200:
	cmp	r2, #2
	beq	.L242
.L201:
	sub	r3, r3, r1
	add	r2, r3, #79
	cmp	r2, #158
	bhi	.L208
	ldr	ip, [r5, #12]
	ldr	r2, [r4, #4]
	sub	r2, r2, ip
	add	r2, r2, #23
	cmp	r2, #46
	mov	lr, ip
	bls	.L205
.L208:
	ldr	r3, [r5, #60]
	ldr	r2, [r5, #76]
	cmp	r3, #2
	add	r0, r2, #1
	beq	.L243
	cmp	r3, #1
	beq	.L244
.L212:
	mov	r3, #0
	str	r3, [r5, #80]
.L213:
	str	r0, [r5, #76]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L240:
	add	r0, r4, #24
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, ip}
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #12]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L197
.L237:
	ldr	r1, [r5, #8]
	b	.L196
.L239:
	add	r0, r4, #24
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, ip}
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #12]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L193
.L236:
	ldr	r1, [r5, #8]
	b	.L192
.L197:
	ldr	r3, [r5, #64]
	sub	r3, r3, #4
	mov	r2, r6
	str	r3, [r5, #64]
	mov	r0, r9
	ldr	r3, .L245+28
	ldr	r1, [r10]
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4, #52]
	ldr	r2, [r5, #64]
	cmp	r2, #0
	ldrle	r2, [fp]
	suble	r2, r2, #1
	strle	r3, [r5, #52]
	strle	r2, [fp]
	b	.L237
.L242:
	ldr	r2, [r4, #80]
	cmp	r2, #0
	beq	.L201
	ldr	r2, [r4, #4]
	add	r0, r4, #16
	ldm	r0, {r0, ip}
	sub	r2, r2, #16
	stm	sp, {r2, r3}
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #12]
	ldr	r6, .L245+4
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L203
	ldr	r3, [r4]
	ldr	r1, [r5, #8]
	b	.L201
.L205:
	cmp	r3, #0
	ble	.L207
	ldr	r2, [r5, #80]
	cmp	r2, #0
	bne	.L208
	mov	r0, #1
	str	r2, [r5, #76]
	str	r0, [r5, #60]
	str	r0, [r5, #80]
	b	.L209
.L244:
	ldr	ip, [r5, #12]
.L209:
	ldr	r4, [r5, #16]
	ldr	r6, [r5, #28]
	ldr	lr, .L245+32
	sub	r3, r1, r4
	ldr	lr, [lr]
	add	r3, r6, r3
	add	r3, r3, #1
	add	r3, lr, r3, lsl #9
	ldrb	r3, [r3, ip]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L212
	add	r6, r6, r1
	ldr	r3, [r5, #24]
	add	lr, lr, r6, lsl #9
	add	ip, lr, ip
	add	ip, ip, r3
	ldrb	r3, [ip, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L212
	cmp	r2, #19
	ble	.L213
	add	r1, r4, r1
.L238:
	str	r1, [r5, #8]
	b	.L213
.L241:
	ldr	r2, [r4, #80]
	cmp	r2, #0
	beq	.L201
	ldr	r2, [r4, #4]
	add	r0, r4, #16
	ldm	r0, {r0, ip}
	add	r2, r2, #16
	stm	sp, {r2, r3}
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #12]
	ldr	r6, .L245+4
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L202
	ldr	r2, [r4, #56]
	ldr	r1, [r5, #8]
	ldr	r3, [r4]
	b	.L200
.L193:
	mov	r2, r6
	ldr	r3, .L245+28
	mov	r0, r9
	ldr	r1, [r10]
	mov	lr, pc
	bx	r3
	mov	r2, #1
	str	r2, [r4, #52]
	ldr	r3, [r5, #64]
	sub	r3, r3, #2
	cmp	r3, #0
	str	r3, [r5, #64]
	ldrle	r3, [fp]
	suble	r3, r3, #1
	strle	r2, [r5, #52]
	strle	r3, [fp]
	b	.L236
.L243:
	ldr	lr, [r5, #12]
.L210:
	ldr	r3, .L245+32
	ldr	ip, [r5, #16]
	ldr	r3, [r3]
	sub	r1, r1, ip
	add	r3, r3, r1, lsl #9
	ldrb	ip, [r3, lr]	@ zero_extendqisi2
	cmp	ip, #0
	add	r3, r3, lr
	beq	.L212
	ldr	ip, [r5, #24]
	add	r3, r3, ip
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L212
	cmp	r2, #19
	ble	.L213
	b	.L238
.L207:
	beq	.L208
	ldr	r2, [r5, #80]
	cmp	r2, #0
	bne	.L208
	mov	r3, #2
	mov	r0, #1
	str	r2, [r5, #76]
	str	r3, [r5, #60]
	str	r0, [r5, #80]
	b	.L210
.L202:
	ldr	r3, [r5, #64]
	sub	r3, r3, #6
	cmp	r3, #0
	str	r3, [r5, #64]
	ldr	r2, [r4, #56]
	ldr	r1, [r5, #8]
	ldr	r3, [r4]
	bgt	.L200
	mov	lr, #1
	ldr	ip, .L245+16
	ldr	r0, [ip]
	sub	r0, r0, #1
	str	r0, [ip]
	str	lr, [r5, #52]
	b	.L200
.L203:
	ldr	r3, [r5, #64]
	sub	r3, r3, #12
	cmp	r3, #0
	str	r3, [r5, #64]
	ldr	r1, [r5, #8]
	ldr	r3, [r4]
	bgt	.L201
	mov	ip, #1
	ldr	r0, .L245+16
	ldr	r2, [r0]
	sub	r2, r2, #1
	str	r2, [r0]
	str	ip, [r5, #52]
	b	.L201
.L246:
	.align	2
.L245:
	.word	playerBullets
	.word	collision
	.word	enemyHit_length
	.word	enemyHit_data
	.word	enemyCount
	.word	protoBullets
	.word	player
	.word	playSoundB
	.word	collisionMap
	.size	updateVertOctoEye.part.0, .-updateVertOctoEye.part.0
	.align	2
	.global	initGamePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGamePlayer, %function
initGamePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, lr}
	mov	r1, #1
	mov	r6, #104
	mov	r5, #40
	mov	r4, #3
	mov	lr, #30
	mov	r0, #24
	mov	ip, #60
	ldr	r3, .L249
	str	r2, [r3]
	ldr	r3, .L249+4
	str	r2, [r3]
	ldr	r3, .L249+8
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r3, #40]
	str	lr, [r3, #84]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	r2, [r3, #68]
	str	r2, [r3, #44]
	str	r2, [r3, #80]
	str	ip, [r3, #76]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r1, [r3, #56]
	str	r1, [r3, #72]
	pop	{r4, r5, r6, lr}
	bx	lr
.L250:
	.align	2
.L249:
	.word	vOff
	.word	hOff
	.word	player
	.size	initGamePlayer, .-initGamePlayer
	.global	__aeabi_idivmod
	.align	2
	.global	animateGamePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateGamePlayer, %function
animateGamePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	lr, .L380
	ldr	r3, [lr]
	ldr	r4, .L380+4
	cmp	r3, #1
	ldr	r1, [r4, #80]
	ldr	r3, [r4, #64]
	beq	.L371
	ldr	ip, .L380+8
	ldr	r2, [ip]
	cmp	r2, #1
	ldr	r5, .L380+12
	beq	.L357
.L253:
	cmp	r3, #0
	bne	.L261
.L262:
	cmp	r1, #1
	beq	.L372
.L263:
	cmp	r1, #2
	bne	.L266
.L265:
	mov	ip, #0
	ldr	r2, [r4, #56]
	ldr	r0, .L380+16
	cmp	r2, #1
	str	ip, [r0]
	beq	.L373
	cmp	r2, #2
	moveq	r0, #24
	moveq	r2, #4
	streq	r0, [r4, #28]
	streq	r2, [r4, #36]
.L266:
	cmp	r3, #0
	ldr	r2, [r4, #48]
	beq	.L374
.L269:
	cmp	r2, #1
	beq	.L367
	cmp	r2, #2
	bne	.L276
.L278:
	ldr	r2, .L380+20
	ldrh	r2, [r2, #48]
	tst	r2, #128
	ldr	r0, [r4, #60]
	mov	r2, #2
	beq	.L280
	b	.L314
.L261:
	mov	r6, #0
	mov	ip, #8
	ldr	r2, [r4, #56]
	ldr	r0, .L380+16
	cmp	r2, #1
	str	r6, [r0]
	str	ip, [r4, #28]
	beq	.L375
	cmp	r2, #2
	bne	.L262
	mov	r2, #3
.L365:
	cmp	r1, #1
	str	r2, [r4, #36]
	bne	.L263
.L372:
	mov	r2, #0
	ldr	ip, [r4, #56]
	ldr	r0, .L380+16
	cmp	ip, #2
	str	r2, [r0]
	moveq	ip, #8
	moveq	r2, #4
	streq	ip, [r4, #28]
	streq	r2, [r4, #36]
.L264:
	ldr	r2, [r4, #48]
	cmp	r2, #1
	beq	.L376
	cmp	r2, #2
	bne	.L276
	cmp	r3, #0
	bne	.L278
.L309:
	mov	r7, #0
	mov	r6, #20
	mov	ip, #1
	mov	r2, #2
	str	r7, [r0]
	str	r6, [r4, #28]
	str	ip, [r4, #36]
.L276:
	ldr	r0, .L380+20
	ldrh	r0, [r0, #48]
	tst	r0, #128
	ldr	r0, [r4, #60]
	beq	.L279
.L314:
	ldr	ip, .L380+20
	ldrh	ip, [ip, #48]
	tst	ip, #64
	bne	.L280
.L279:
	subs	ip, r0, #0
	movne	ip, #1
	cmp	r3, #0
	movne	ip, #0
	cmp	ip, #0
	bne	.L377
.L280:
	cmp	r0, #0
	bne	.L284
	ldr	ip, .L380+24
	str	r0, [ip]
	ldr	ip, .L380+20
	ldrh	ip, [ip, #48]
	tst	ip, #32
	beq	.L285
.L288:
	ldr	r3, .L380+20
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L287
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L287
	ldr	ip, .L380+8
	ldr	r3, [ip]
	cmp	r3, #0
	ldr	r3, [r4, #64]
	bne	.L293
.L313:
	cmp	r3, #0
	bne	.L293
	ldr	r2, [r4, #80]
	sub	r2, r2, #1
	cmp	r2, #1
	bls	.L312
	ldr	r2, [r4, #84]
	cmp	r2, #29
	movle	r3, #12
	ldr	r2, [lr]
	cmp	r2, #1
	str	r3, [r4, #28]
	moveq	r3, #0
	streq	r3, [r4, #36]
	streq	r3, [lr]
	ldr	r3, [r4, #24]
	ands	r3, r3, #7
	bne	.L312
	ldr	r1, .L380+16
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L297
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	rsbs	r2, r3, #0
	and	r2, r2, #3
	and	r3, r3, #3
	rsbpl	r3, r2, #0
	cmp	r3, #3
	str	r3, [r4, #36]
	moveq	r3, #1
	streq	r3, [r1]
	b	.L312
.L374:
	ldr	ip, .L380+8
	ldr	r0, [ip]
	cmp	r0, #0
	bne	.L270
	ldr	ip, [r4, #28]
	cmp	ip, #20
	cmpne	ip, #8
	beq	.L271
	cmp	ip, #24
	beq	.L366
.L270:
	cmp	r2, #1
	ldreq	r0, .L380+16
	beq	.L277
	cmp	r2, #2
	bne	.L276
	ldr	r0, .L380+16
	b	.L309
.L357:
	ldr	r0, [r5]
	cmp	r0, #9
	ble	.L253
	cmp	r3, #0
	bne	.L261
	cmp	r1, #2
	beq	.L265
	ldr	r0, [r4, #84]
	cmp	r0, #30
	movlt	r6, #24
	movge	r6, #8
	ldr	ip, [r4, #56]
	ldr	r0, .L380+16
	cmp	ip, #1
	str	r6, [r4, #28]
	str	r3, [r0]
	streq	r3, [r4, #36]
	beq	.L262
	cmp	ip, #2
	beq	.L365
	b	.L262
.L287:
	ldr	r3, [r4, #64]
	cmp	r3, #0
	beq	.L378
.L293:
	ldr	r3, [r4, #24]
	add	r3, r3, #1
	str	r3, [r4, #24]
.L302:
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L377:
	mov	r3, #30
	ldr	r2, [r4, #28]
	cmp	r2, #20
	str	r3, [r4, #84]
	beq	.L281
	mov	r2, #0
	mov	r1, #28
	ldr	r0, [r4, #36]
	ldr	r3, .L380+16
	cmp	r0, r2
	str	r1, [r4, #28]
	str	r2, [r3]
	beq	.L283
	ldr	r3, .L380+24
	ldr	r2, [r3]
	cmp	r2, #0
	moveq	r1, #1
	streq	r2, [r4, #36]
	streq	r1, [r3]
.L283:
	ldr	r3, [r4, #24]
	tst	r3, #7
	bne	.L284
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	ldr	r3, .L380+28
	add	r0, r0, #1
	sub	r1, r1, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L284:
	ldr	r3, .L380+20
	ldrh	r2, [r3, #48]
	ldrh	r3, [r3, #48]
	b	.L293
.L376:
	cmp	r3, #0
	bne	.L367
.L277:
	mov	r2, #0
	mov	ip, #20
	str	r2, [r0]
	str	r2, [r4, #36]
	str	ip, [r4, #28]
.L367:
	mov	r2, #1
	b	.L276
.L371:
	mov	r2, #5
	ldr	r5, .L380+12
	cmp	r3, #0
	str	r2, [r5]
	bne	.L261
	b	.L262
.L378:
	ldr	ip, .L380+8
.L312:
	ldr	r2, [ip]
	ldr	r3, [r4, #48]
	orrs	r3, r3, r2
	bne	.L293
	ldr	r2, [r4, #80]
	sub	r2, r2, #1
	cmp	r2, #1
	bls	.L293
	ldr	r2, [r4, #56]
	cmp	r2, #1
	beq	.L379
	cmp	r2, #2
	bne	.L293
	ldr	r2, .L380+20
	ldrh	r2, [r2, #48]
	tst	r2, #32
	beq	.L293
	ldr	r1, [r4, #84]
	ldr	r2, .L380+16
	cmp	r1, #29
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	str	r3, [r2]
	movle	r3, #16
	strle	r3, [r4, #28]
	movgt	r3, #4
	strgt	r3, [r4, #28]
	b	.L302
.L375:
	mov	r2, #2
	str	r2, [r4, #36]
	b	.L262
.L271:
	cmp	ip, #20
	movne	r0, r3
	moveq	r0, #5
.L366:
	mov	r6, #0
	ldr	ip, [r4, #56]
	str	r0, [r5]
	ldr	r0, .L380+16
	cmp	ip, #1
	str	r3, [r4, #36]
	str	r6, [r0]
	streq	r6, [r4, #28]
	beq	.L270
	cmp	ip, #2
	moveq	r0, #4
	streq	r0, [r4, #28]
	b	.L270
.L285:
	ldr	ip, .L380+8
	ldr	r6, [ip]
	sub	r1, r1, #1
	orr	r3, r3, r6
	cmp	r1, #1
	orr	r2, r3, r2
	movls	r1, #0
	movhi	r1, #1
	cmp	r2, #0
	movne	r1, #0
	cmp	r1, #0
	beq	.L288
	ldr	r3, [r4, #84]
	cmp	r3, #30
	movlt	r3, #16
	movge	r3, #4
	ldr	r2, [lr]
	str	r3, [r4, #28]
	ldr	r3, [r4, #24]
	cmp	r2, #1
	streq	r0, [r4, #36]
	streq	r0, [lr]
	ands	r3, r3, #7
	bne	.L288
	ldr	r1, .L380+16
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L291
	ldr	r3, [r4, #36]
	add	r3, r3, #1
	rsbs	r2, r3, #0
	and	r2, r2, #3
	and	r3, r3, #3
	rsbpl	r3, r2, #0
	cmp	r3, #3
	str	r3, [r4, #36]
	moveq	r3, #1
	bne	.L288
.L370:
	str	r3, [r1]
	ldr	r3, .L380+20
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L287
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L287
	ldr	r3, [r4, #64]
	b	.L313
.L373:
	mov	r2, #4
	mov	r0, #16
	cmp	r3, #0
	str	r2, [r4, #36]
	str	r0, [r4, #28]
	ldr	r2, [r4, #48]
	bne	.L269
	b	.L374
.L281:
	mov	r3, #0
	mov	r2, #28
	ldr	r1, .L380+16
	str	r3, [r4, #36]
	str	r3, [r1]
	str	r2, [r4, #28]
	b	.L283
.L379:
	ldr	r2, .L380+20
	ldrh	r2, [r2, #48]
	tst	r2, #16
	beq	.L293
	ldr	r1, [r4, #84]
	ldr	r2, .L380+16
	cmp	r1, #29
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	str	r3, [r2]
	movle	r3, #12
	str	r3, [r4, #28]
	b	.L302
.L297:
	cmp	r2, #1
	bne	.L312
	ldr	r2, [r4, #36]
	sub	r2, r2, #1
	rsbs	r0, r2, #0
	and	r0, r0, #3
	and	r2, r2, #3
	rsbpl	r2, r0, #0
	cmp	r2, #1
	str	r2, [r4, #36]
	streq	r3, [r1]
	b	.L312
.L291:
	cmp	r2, #1
	bne	.L288
	ldr	r2, [r4, #36]
	sub	r2, r2, #1
	rsbs	r0, r2, #0
	and	r0, r0, #3
	and	r2, r2, #3
	rsbpl	r2, r0, #0
	cmp	r2, #1
	str	r2, [r4, #36]
	bne	.L288
	b	.L370
.L381:
	.align	2
.L380:
	.word	wasAirSlash
	.word	player
	.word	isFalling
	.word	jumpAniCooldown
	.word	reverseSpriteCheck
	.word	67109120
	.word	ladderSpriteCheck
	.word	__aeabi_idivmod
	.size	animateGamePlayer, .-animateGamePlayer
	.align	2
	.global	drawText
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawText, %function
drawText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #0
	mov	fp, #788
	ldr	r0, .L400
	ldr	ip, .L400+4
	ldr	r5, [r0, #12]
	mov	r10, r0
	mov	r1, r0
	ldr	ip, [ip]
	ldr	r0, .L400+8
	ldr	r2, .L400+12
	ldr	r4, [r0]
	ldr	r9, .L400+16
	add	ip, ip, #912
	and	r5, r5, r2
	lsl	ip, ip, #16
	mov	r8, r2
	lsr	ip, ip, #16
	orr	r5, r5, #16384
	add	r2, r9, r4, lsl #3
	add	r7, r4, #1
.L391:
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	cmp	r3, #0
	strh	lr, [r2]	@ movhi
	strheq	r5, [r2, #2]	@ movhi
	strheq	fp, [r2, #4]	@ movhi
	add	r6, r3, r4
	beq	.L393
	ldr	r0, [r1, #12]
	cmp	r3, #1
	and	r0, r0, r8
	strh	r0, [r2, #2]	@ movhi
	add	r0, r7, r3
	ldreq	r0, .L400+20
	strheq	r0, [r2, #4]	@ movhi
	beq	.L393
	cmp	r3, #3
	beq	.L398
	strh	ip, [r2, #4]	@ movhi
.L393:
	add	r3, r3, #1
	add	r1, r1, #92
	add	r2, r2, #8
	b	.L391
.L398:
	ldr	r2, .L400+24
	ldr	r3, [r10, #288]
	ldr	r2, [r2, #72]
	lsl	r3, r3, #23
	cmp	r2, #3
	lsr	r3, r3, #23
	beq	.L399
	add	r6, r9, r6, lsl #3
	orr	r3, r3, #16384
	strh	r3, [r6, #2]	@ movhi
	add	r2, r2, #396
	ldr	r3, .L400+8
	lsl	r2, r2, #1
	strh	r2, [r6, #4]	@ movhi
	str	r0, [r3]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L399:
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L400+8
	ldr	r2, .L400+28
	str	r0, [r1]
	orr	lr, lr, #16384
	lsl	r1, r6, #3
	add	r6, r9, r6, lsl #3
	strh	lr, [r9, r1]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	strh	r2, [r6, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L401:
	.align	2
.L400:
	.word	text
	.word	playerLives
	.word	shadowOAMIndex
	.word	511
	.word	shadowOAM
	.word	983
	.word	player
	.word	858
	.size	drawText, .-drawText
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
	ldr	r1, .L415
	ldr	ip, .L415+4
	ldr	r2, [r1, #44]
	ldr	r3, [ip]
	cmp	r2, #0
	push	{r4, r5, r6, r7, lr}
	add	lr, r3, #1
	beq	.L403
	ldr	r1, .L415+8
	lsl	r3, r3, #3
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	str	lr, [ip]
	strh	r2, [r1, r3]	@ movhi
.L402:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L403:
	ldr	r5, [r1, #56]
	ldr	r0, .L415+12
	ldr	r2, .L415+16
	cmp	r5, #2
	ldrh	r4, [r0]
	ldrh	r6, [r2]
	ldrh	r0, [r1]
	ldrh	r2, [r1, #4]
	beq	.L414
	ldr	r7, [r1, #80]
	cmp	r7, #0
	beq	.L408
	cmp	r5, #1
	bne	.L408
	sub	r2, r2, r6
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	ldr	r6, .L415+8
	sub	r0, r0, #16
	sub	r4, r0, r4
	cmp	r7, #1
	lsl	r5, r3, #3
	and	r4, r4, #255
	add	r3, r6, r3, lsl #3
	strh	r4, [r6, r5]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	moveq	r2, #512
	streq	lr, [ip]
	strheq	r2, [r3, #4]	@ movhi
	bne	.L407
	b	.L402
.L414:
	ldr	r5, [r1, #84]
	cmp	r5, #29
	suble	r2, r2, #12
	ble	.L408
	ldr	r5, [r1, #80]
	cmp	r5, #0
	bne	.L409
.L408:
	sub	r2, r2, r6
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r6, .L415+8
	sub	r0, r0, r4
	lsl	r5, r3, #3
	and	r0, r0, #255
	add	r3, r6, r3, lsl #3
	strh	r0, [r6, r5]	@ movhi
	strh	r2, [r3, #2]	@ movhi
.L407:
	ldr	r2, [r1, #36]
	ldr	r3, [r1, #28]
	add	r5, r6, r5
	add	r3, r3, r2, lsl #7
	str	lr, [ip]
	strh	r3, [r5, #4]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L409:
	sub	r5, r2, #20
	sub	r2, r5, r6
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	ldr	r6, .L415+8
	sub	r0, r0, #16
	sub	r4, r0, r4
	lsl	r5, r3, #3
	and	r4, r4, #255
	add	r3, r6, r3, lsl #3
	strh	r4, [r6, r5]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	b	.L407
.L416:
	.align	2
.L415:
	.word	player
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	vOff
	.word	hOff
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initHealth
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHealth, %function
initHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #10
	mov	r0, #0
	mov	r1, r2
	ldr	r3, .L421
.L418:
	str	r2, [r3, #8]
	add	r2, r2, #4
	cmp	r2, #50
	str	r1, [r3, #12]
	str	r0, [r3, #52]
	add	r3, r3, #92
	bne	.L418
	bx	lr
.L422:
	.align	2
.L421:
	.word	health
	.size	initHealth, .-initHealth
	.align	2
	.global	drawHealth
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHealth, %function
drawHealth:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r6, #884
	ldr	r8, .L429
	ldr	r7, [r8]
	add	ip, r7, r7, lsl #1
	ldr	r2, .L429+4
	ldr	r3, .L429+8
	rsb	ip, r7, ip, lsl #3
	lsl	ip, ip, #2
	ldr	r5, .L429+12
	ldr	r4, .L429+16
	add	ip, ip, #52
	add	r2, r2, r7, lsl #3
	add	lr, r3, #920
.L426:
	ldr	r1, [r3, ip]
	cmp	r1, #0
	movne	r0, r4
	moveq	r0, r6
	ldr	r1, [r3, #12]
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	add	r3, r3, #92
	and	r1, r1, r5
	cmp	r3, lr
	strh	r0, [r2, #4]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	r9, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L426
	add	r7, r7, #10
	str	r7, [r8]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L430:
	.align	2
.L429:
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	health
	.word	511
	.word	885
	.size	drawHealth, .-drawHealth
	.align	2
	.global	initText
	.syntax unified
	.arm
	.fpu softvfp
	.type	initText, %function
initText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #18
	mov	r5, #10
	mov	r4, #30
	mov	lr, #48
	mov	ip, #56
	mov	r0, #14
	mov	r1, #68
	ldr	r3, .L433
	str	r5, [r3, #8]
	str	r4, [r3, #12]
	str	lr, [r3, #104]
	str	ip, [r3, #196]
	str	r0, [r3, #284]
	str	r1, [r3, #288]
	str	r2, [r3, #100]
	str	r2, [r3, #192]
	pop	{r4, r5, lr}
	bx	lr
.L434:
	.align	2
.L433:
	.word	text
	.size	initText, .-initText
	.align	2
	.global	initLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLives, %function
initLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L457
	ldr	ip, [r3]
	cmp	ip, #0
	bxle	lr
	mov	r2, #0
	ldr	r1, .L457+4
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r0, r2
	mov	fp, #110
	mov	r10, #56
	mov	r9, #40
	mov	r8, #232
	mov	r7, #47
	mov	r6, #496
	ldr	r3, .L457+8
	ldr	r1, [r1]
	ldr	r5, .L457+12
	b	.L445
.L455:
	mov	r4, #30
	mov	lr, #7
	str	r1, [r3, #52]
	str	r4, [r3, #8]
	str	lr, [r3, #12]
.L438:
	add	r2, r2, #1
	cmp	ip, r2
	add	r3, r3, #92
	beq	.L454
.L445:
	cmp	r1, #0
	beq	.L455
	cmp	r1, #1
	streq	fp, [r3, #8]
	streq	r5, [r3, #12]
	streq	r0, [r3, #52]
	beq	.L438
	cmp	r1, #2
	bne	.L456
	ldr	lr, .L457+16
	add	r2, r2, #1
	cmp	ip, r2
	str	r10, [r3, #8]
	str	lr, [r3, #12]
	str	r0, [r3, #52]
	add	r3, r3, #92
	bne	.L445
.L454:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L456:
	cmp	r1, #3
	streq	r9, [r3, #8]
	streq	r8, [r3, #12]
	streq	r0, [r3, #52]
	beq	.L438
	cmp	r1, #4
	streq	r7, [r3, #8]
	streq	r6, [r3, #12]
	streq	r0, [r3, #52]
	b	.L438
.L458:
	.align	2
.L457:
	.word	livesCount
	.word	levelsCleared
	.word	lives
	.word	409
	.word	277
	.size	initLives, .-initLives
	.align	2
	.global	drawLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L471
	ldr	ip, [r3]
	cmp	ip, #0
	bxle	lr
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r8, .L471+4
	ldr	lr, .L471+8
	ldr	r1, .L471+12
	ldr	r7, [r8]
	ldr	r2, .L471+16
	ldr	r3, .L471+20
	add	r0, ip, ip, lsl #1
	rsb	r0, ip, r0, lsl #3
	ldrh	r5, [lr]
	mov	r6, #788
	ldrh	r4, [r1]
	ldr	lr, .L471+24
	add	r2, r2, r7, lsl #3
	add	r0, r3, r0, lsl #2
	b	.L463
.L470:
	ldrh	r1, [r2]
	add	r3, r3, #92
	orr	r1, r1, #512
	cmp	r3, r0
	strh	r1, [r2]	@ movhi
	add	r2, r2, #8
	beq	.L469
.L463:
	ldr	r1, [r3, #52]
	cmp	r1, #0
	bne	.L470
	ldr	r1, [r3, #12]
	ldr	r9, [r3, #8]
	sub	r1, r1, r4
	and	r1, r1, lr
	sub	r9, r9, r5
	add	r3, r3, #92
	orr	r1, r1, #16384
	and	r9, r9, #255
	cmp	r3, r0
	strh	r6, [r2, #4]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	r9, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L463
.L469:
	add	ip, r7, ip
	str	ip, [r8]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L472:
	.align	2
.L471:
	.word	livesCount
	.word	shadowOAMIndex
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	lives
	.word	511
	.size	drawLives, .-drawLives
	.align	2
	.global	initSmallHealthPickups
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSmallHealthPickups, %function
initSmallHealthPickups:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L498
	ldr	ip, [r3]
	cmp	ip, #0
	bxle	lr
	mov	r2, #0
	ldr	r1, .L498+4
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L498+8
	mov	r9, #74
	mov	r5, r2
	mov	r8, #140
	mov	r7, #44
	mov	r10, #118
	mov	fp, #102
	mov	r4, #2
	mov	lr, #12
	ldr	r0, [r1]
	ldr	r6, .L498+12
	b	.L484
.L494:
	rsb	r1, r2, r2, lsl #3
	lsl	r1, r1, #1
	add	r1, r1, #104
	str	r6, [r3, #12]
	str	r1, [r3, #8]
.L476:
	add	r2, r2, #1
	cmp	ip, r2
	str	r5, [r3, #52]
	str	r4, [r3, #48]
	str	lr, [r3, #32]
	add	r3, r3, #92
	beq	.L493
.L484:
	cmp	r0, #0
	beq	.L494
	cmp	r0, #1
	bne	.L495
	rsb	r1, r2, r2, lsl #3
	rsb	r1, r1, r1, lsl #3
	add	r1, r1, #264
	add	r1, r1, #3
	str	r9, [r3, #8]
	str	r1, [r3, #12]
	b	.L476
.L495:
	cmp	r0, #2
	bne	.L496
	add	r1, r2, r2, lsl #2
	lsl	r1, r1, #3
	add	r1, r1, #248
	str	r8, [r3, #8]
	str	r1, [r3, #12]
	b	.L476
.L496:
	cmp	r0, #3
	bne	.L497
	add	r1, r2, r2, lsl #1
	lsl	r1, r1, #6
	add	r1, r1, #140
	str	r7, [r3, #8]
	str	r1, [r3, #12]
	b	.L476
.L497:
	cmp	r0, #4
	bne	.L476
	add	r1, r2, r2, lsl #2
	cmp	r2, #1
	lsl	r1, r1, #2
	addle	r1, r1, #480
	addgt	r1, r1, #440
	strle	fp, [r3, #8]
	strgt	r10, [r3, #8]
	str	r1, [r3, #12]
	b	.L476
.L493:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L499:
	.align	2
.L498:
	.word	smallPickupsCount
	.word	levelsCleared
	.word	smallHealthPickup
	.word	495
	.size	initSmallHealthPickups, .-initSmallHealthPickups
	.align	2
	.global	animatePickups
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePickups, %function
animatePickups:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L514
	ldr	ip, [r3]
	cmp	ip, #0
	push	{r4, r5, lr}
	ble	.L501
	ldr	r2, .L514+4
	add	r3, ip, ip, lsl #1
	rsb	ip, ip, r3, lsl #3
	ldr	r4, .L514+8
	ldr	lr, .L514+12
	add	ip, r2, ip, lsl #2
.L505:
	ldr	r0, [r2, #52]
	cmp	r0, #0
	bne	.L502
	ldr	r1, [r2, #32]
	add	r3, r1, r1, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	add	r3, r1, r3, lsl #1
	add	r3, r3, r4
	cmp	lr, r3, ror #2
	bcc	.L503
	add	r3, r2, #44
	ldm	r3, {r3, r5}
	sub	r5, r5, #1
	cmp	r3, r5
	add	r3, r3, #1
	strlt	r3, [r2, #44]
	strge	r0, [r2, #44]
.L503:
	add	r1, r1, #1
	str	r1, [r2, #32]
.L502:
	add	r2, r2, #92
	cmp	r2, ip
	bne	.L505
.L501:
	ldr	r3, .L514+16
	ldr	ip, [r3]
	cmp	ip, #0
	ble	.L500
	ldr	r2, .L514+20
	add	r3, ip, ip, lsl #1
	rsb	ip, ip, r3, lsl #3
	ldr	r4, .L514+8
	ldr	lr, .L514+12
	add	ip, r2, ip, lsl #2
.L510:
	ldr	r0, [r2, #52]
	cmp	r0, #0
	bne	.L507
	ldr	r1, [r2, #32]
	add	r3, r1, r1, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	add	r3, r1, r3, lsl #1
	add	r3, r3, r4
	cmp	lr, r3, ror #2
	bcc	.L508
	add	r3, r2, #44
	ldm	r3, {r3, r5}
	sub	r5, r5, #1
	cmp	r3, r5
	add	r3, r3, #1
	strlt	r3, [r2, #44]
	strge	r0, [r2, #44]
.L508:
	add	r1, r1, #1
	str	r1, [r2, #32]
.L507:
	add	r2, r2, #92
	cmp	r2, ip
	bne	.L510
.L500:
	pop	{r4, r5, lr}
	bx	lr
.L515:
	.align	2
.L514:
	.word	smallPickupsCount
	.word	smallHealthPickup
	.word	715827880
	.word	357913940
	.word	largePickupsCount
	.word	largeHealthPickup
	.size	animatePickups, .-animatePickups
	.align	2
	.global	drawSmallHealthPickups
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSmallHealthPickups, %function
drawSmallHealthPickups:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L525
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, [r3]
	cmp	r4, #0
	ble	.L516
	ldr	r9, .L525+4
	ldr	r0, .L525+8
	ldr	r1, .L525+12
	ldr	r8, [r9]
	ldr	r2, .L525+16
	ldr	r3, .L525+20
	add	lr, r4, r4, lsl #1
	rsb	lr, r4, lr, lsl #3
	ldrh	r7, [r0]
	ldrh	r6, [r1]
	ldr	r5, .L525+24
	add	r2, r2, r8, lsl #3
	add	lr, r3, lr, lsl #2
	b	.L520
.L524:
	ldrh	r1, [r2]
	add	r3, r3, #92
	orr	r1, r1, #512
	cmp	r3, lr
	strh	r1, [r2]	@ movhi
	add	r2, r2, #8
	beq	.L523
.L520:
	ldr	r1, [r3, #52]
	cmp	r1, #0
	bne	.L524
	add	r0, r3, #8
	ldm	r0, {r0, r1}
	ldr	ip, [r3, #44]
	sub	r0, r0, r7
	sub	r1, r1, r6
	add	r3, r3, #92
	and	r0, r0, #255
	and	r1, r1, r5
	add	ip, ip, #852
	cmp	r3, lr
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	add	r2, r2, #8
	bne	.L520
.L523:
	add	r4, r8, r4
	str	r4, [r9]
.L516:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L526:
	.align	2
.L525:
	.word	smallPickupsCount
	.word	shadowOAMIndex
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	smallHealthPickup
	.word	511
	.size	drawSmallHealthPickups, .-drawSmallHealthPickups
	.align	2
	.global	initLargeHealthPickups
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLargeHealthPickups, %function
initLargeHealthPickups:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L547
	ldr	r3, [r3]
	cmp	r3, #0
	bxle	lr
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #2
	mov	r2, #196
	add	r3, r3, r3, lsl r4
	add	r3, r3, r3, lsl r4
	ldr	r1, .L547+4
	lsl	r0, r3, r4
	mov	fp, #40
	mov	r10, #60
	mov	r9, #54
	mov	r8, #15
	mov	r7, #110
	mov	r6, #280
	ldr	r1, [r1]
	ldr	r3, .L547+8
	ldr	r5, .L547+12
	add	r0, r0, r2
	b	.L537
.L531:
	ldr	ip, .L547+16
	str	fp, [r3, #8]
	str	ip, [r3, #12]
.L530:
	mov	lr, #0
	mov	ip, #12
	add	r2, r2, #100
	cmp	r2, r0
	str	r4, [r3, #48]
	str	lr, [r3, #52]
	str	ip, [r3, #32]
	add	r3, r3, #92
	beq	.L546
.L537:
	cmp	r1, #0
	streq	r7, [r3, #8]
	streq	r6, [r3, #12]
	beq	.L530
	cmp	r1, #1
	beq	.L531
	cmp	r1, #2
	streq	r10, [r3, #8]
	streq	r5, [r3, #12]
	beq	.L530
	cmp	r1, #3
	streq	r9, [r3, #8]
	streq	r5, [r3, #12]
	beq	.L530
	cmp	r1, #4
	streq	r8, [r3, #8]
	streq	r2, [r3, #12]
	b	.L530
.L546:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L548:
	.align	2
.L547:
	.word	largePickupsCount
	.word	levelsCleared
	.word	largeHealthPickup
	.word	494
	.word	490
	.size	initLargeHealthPickups, .-initLargeHealthPickups
	.align	2
	.global	drawLargeHealthPickups
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLargeHealthPickups, %function
drawLargeHealthPickups:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L558
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	lr, [r3]
	cmp	lr, #0
	ble	.L549
	ldr	r8, .L558+4
	ldr	r0, .L558+8
	ldr	r1, .L558+12
	ldr	r7, [r8]
	ldr	r2, .L558+16
	ldr	r3, .L558+20
	add	ip, lr, lr, lsl #1
	rsb	ip, lr, ip, lsl #3
	ldrh	r6, [r0]
	ldrh	r5, [r1]
	ldr	r4, .L558+24
	add	r2, r2, r7, lsl #3
	add	ip, r3, ip, lsl #2
	b	.L553
.L557:
	ldrh	r1, [r2]
	add	r3, r3, #92
	orr	r1, r1, #512
	cmp	r3, ip
	strh	r1, [r2]	@ movhi
	add	r2, r2, #8
	beq	.L556
.L553:
	ldr	r1, [r3, #52]
	cmp	r1, #0
	bne	.L557
	ldr	r0, [r3, #12]
	ldr	r1, [r3, #44]
	ldr	r9, [r3, #8]
	sub	r0, r0, r5
	lsl	r1, r1, #6
	and	r0, r0, r4
	add	r1, r1, #788
	sub	r9, r9, r6
	add	r3, r3, #92
	orr	r0, r0, #16384
	add	r1, r1, #2
	and	r9, r9, #255
	cmp	r3, ip
	strh	r0, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	r9, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L553
.L556:
	add	lr, r7, lr
	str	lr, [r8]
.L549:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L559:
	.align	2
.L558:
	.word	largePickupsCount
	.word	shadowOAMIndex
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	largeHealthPickup
	.word	511
	.size	drawLargeHealthPickups, .-drawLargeHealthPickups
	.align	2
	.global	initPlayerBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayerBullets, %function
initPlayerBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	ip, #0
	mov	r5, #16
	mov	r4, #8
	mvn	lr, #15
	mov	r0, #2
	mov	r1, #1
	ldr	r3, .L564
	add	r2, r3, #276
.L561:
	str	r5, [r3, #28]
	str	r4, [r3, #24]
	str	lr, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r3, #20]
	str	r1, [r3, #52]
	add	r3, r3, #92
	cmp	r3, r2
	bne	.L561
	pop	{r4, r5, lr}
	bx	lr
.L565:
	.align	2
.L564:
	.word	playerBullets
	.size	initPlayerBullets, .-initPlayerBullets
	.align	2
	.global	firePlayerBulletLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	firePlayerBulletLeft, %function
firePlayerBulletLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L577
	ldr	r2, [r3, #52]
	cmp	r2, #1
	beq	.L569
	ldr	r2, [r3, #144]
	cmp	r2, #1
	beq	.L567
	ldr	r2, [r3, #236]
	cmp	r2, #1
	moveq	r2, #2
	bxne	lr
.L567:
	push	{r4, lr}
	mov	lr, #2
	mov	r4, #0
	ldr	ip, .L577+4
	ldr	r0, [ip, #20]
	ldr	r1, [ip]
	add	r0, r0, r0, lsr #31
	add	r1, r1, r0, asr #1
	ldr	ip, [ip, #4]
	add	r0, r2, r2, lsl #1
	rsb	r2, r2, r0, lsl #3
	add	r3, r3, r2, lsl lr
	sub	r1, r1, #5
	sub	r0, ip, #22
	str	r4, [r3, #52]
	str	lr, [r3, #60]
	str	r1, [r3, #8]
	str	r0, [r3, #12]
	pop	{r4, lr}
	bx	lr
.L569:
	mov	r2, #0
	b	.L567
.L578:
	.align	2
.L577:
	.word	playerBullets
	.word	player
	.size	firePlayerBulletLeft, .-firePlayerBulletLeft
	.align	2
	.global	firePlayerBulletRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	firePlayerBulletRight, %function
firePlayerBulletRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L590
	ldr	r2, [r3, #52]
	cmp	r2, #1
	beq	.L582
	ldr	r2, [r3, #144]
	cmp	r2, #1
	beq	.L580
	ldr	r2, [r3, #236]
	cmp	r2, #1
	moveq	r2, #2
	bxne	lr
.L580:
	push	{r4, lr}
	mov	lr, #1
	mov	r4, #0
	ldr	ip, .L590+4
	ldr	r1, [ip, #20]
	ldr	r0, [ip]
	add	r1, r1, r1, lsr #31
	add	r0, r0, r1, asr lr
	add	r1, r2, r2, lsl lr
	rsb	r2, r2, r1, lsl #3
	ldr	r1, [ip, #4]
	ldr	ip, [ip, #16]
	add	r1, r1, ip
	add	r3, r3, r2, lsl #2
	sub	r0, r0, #5
	add	r2, r1, #8
	str	r4, [r3, #52]
	str	lr, [r3, #60]
	str	r0, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, lr}
	bx	lr
.L582:
	mov	r2, #0
	b	.L580
.L591:
	.align	2
.L590:
	.word	playerBullets
	.word	player
	.size	firePlayerBulletRight, .-firePlayerBulletRight
	.align	2
	.global	updatePlayerBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayerBullet, %function
updatePlayerBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #52]
	cmp	r2, #0
	mov	r3, r0
	bxne	lr
	ldr	r2, [r0, #60]
	cmp	r2, #1
	beq	.L596
	cmp	r2, #2
	bxne	lr
	b	updatePlayerBullet.part.0
.L596:
	ldr	ip, .L597
	ldr	r0, [r0, #12]
	ldr	r1, [r3, #24]
	ldr	ip, [ip]
	add	r1, r0, r1
	sub	r1, r1, ip
	cmp	r1, #255
	ldrle	r2, [r3, #20]
	addle	r0, r2, r0
	strle	r0, [r3, #12]
	strgt	r2, [r3, #52]
	bx	lr
.L598:
	.align	2
.L597:
	.word	hOff
	.size	updatePlayerBullet, .-updatePlayerBullet
	.align	2
	.global	drawPlayerBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayerBullets, %function
drawPlayerBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, #856
	ldr	r4, .L605
	ldr	r0, .L605+4
	ldr	r1, .L605+8
	ldr	ip, [r4]
	ldr	r2, .L605+12
	ldr	r3, .L605+16
	ldrh	r7, [r0]
	ldrh	r6, [r1]
	ldr	r5, .L605+20
	add	r2, r2, ip, lsl #3
	add	lr, r3, #276
.L602:
	ldr	r1, [r3, #52]
	cmp	r1, #0
	beq	.L600
	ldrh	r1, [r2]
	orr	r1, r1, #512
	strh	r1, [r2]	@ movhi
.L601:
	add	r3, r3, #92
	cmp	r3, lr
	add	r2, r2, #8
	bne	.L602
	add	ip, ip, #3
	str	ip, [r4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L600:
	add	r0, r3, #8
	ldm	r0, {r0, r1}
	sub	r0, r0, r7
	sub	r1, r1, r6
	and	r0, r0, #255
	and	r1, r1, r5
	strh	r8, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	b	.L601
.L606:
	.align	2
.L605:
	.word	shadowOAMIndex
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	playerBullets
	.word	511
	.size	drawPlayerBullets, .-drawPlayerBullets
	.align	2
	.global	initMoleGuys
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMoleGuys, %function
initMoleGuys:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L670
	ldr	r4, [r3]
	cmp	r4, #0
	sub	sp, sp, #116
	ble	.L607
	mov	lr, #0
	ldr	r1, .L670+4
	ldr	r10, [r1, #840]
	str	r10, [sp, #80]
	ldr	r10, [r1, #836]
	str	r10, [sp, #84]
	ldr	r10, [r1, #748]
	str	r10, [sp, #100]
	ldr	r10, [r1, #744]
	str	r10, [sp, #108]
	ldr	r10, [r1, #656]
	str	r10, [sp, #88]
	ldr	r10, [r1, #652]
	str	r10, [sp, #96]
	ldr	r10, [r1, #564]
	str	r10, [sp, #68]
	ldr	r10, [r1, #560]
	str	r10, [sp, #76]
	ldr	r10, [r1, #472]
	str	r10, [sp, #56]
	ldr	r10, [r1, #468]
	str	r10, [sp, #64]
	ldr	r10, [r1, #380]
	str	r10, [sp, #44]
	ldr	r10, [r1, #376]
	str	lr, [sp, #104]
	str	lr, [sp, #92]
	str	lr, [sp, #72]
	str	lr, [sp, #60]
	str	lr, [sp, #48]
	str	lr, [sp, #4]
	str	lr, [sp, #32]
	str	lr, [sp, #16]
	str	r10, [sp, #52]
	ldr	r10, [r1, #288]
	str	r10, [sp, #8]
	ldr	r10, [r1, #284]
	str	r10, [sp, #12]
	ldr	r10, [r1, #196]
	str	r10, [sp, #36]
	ldr	r10, [r1, #192]
	str	r10, [sp, #40]
	ldr	r10, [r1, #104]
	ldr	fp, .L670+8
	str	r10, [sp, #24]
	ldr	r10, [r1, #100]
	mov	r3, r1
	add	r1, r1, #8
	str	r10, [sp, #20]
	mov	r9, lr
	mov	r2, lr
	mov	ip, lr
	mov	r0, #16
	mov	r8, #6
	mov	r7, #100
	mov	r6, #1
	mov	r5, #2
	ldm	r1, {r1, r10}
	ldr	fp, [fp]
	str	lr, [sp, #28]
	b	.L612
.L610:
	cmp	fp, #4
	bne	.L611
	cmp	r2, #0
	beq	.L632
	cmp	r2, #1
	beq	.L633
	cmp	r2, #2
	beq	.L634
	cmp	r2, #3
	ldr	lr, [sp, #12]
	moveq	lr, #16
	str	lr, [sp, #12]
	ldr	lr, [sp, #4]
	moveq	lr, #1
	str	lr, [sp, #4]
	ldr	lr, [sp, #8]
	moveq	lr, #256
	str	lr, [sp, #8]
.L611:
	add	r2, r2, #1
	cmp	r2, r4
	add	r3, r3, #92
	beq	.L668
.L612:
	cmp	fp, #2
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r8, [r3, #64]
	str	r7, [r3, #56]
	str	ip, [r3, #52]
	str	r6, [r3, #68]
	str	ip, [r3, #88]
	str	r5, [r3, #60]
	bne	.L610
	cmp	r2, #0
	beq	.L623
	cmp	r2, #1
	beq	.L624
	cmp	r2, #2
	beq	.L625
	cmp	r2, #3
	beq	.L626
	cmp	r2, #4
	beq	.L627
	cmp	r2, #5
	beq	.L628
	cmp	r2, #6
	beq	.L629
	cmp	r2, #7
	beq	.L630
	cmp	r2, #8
	beq	.L669
	mov	lr, #24
	str	lr, [sp, #84]
	mov	lr, #1
	str	lr, [sp, #28]
	mov	lr, #480
	str	lr, [sp, #80]
	b	.L611
.L632:
	add	r2, r2, #1
	cmp	r2, r4
	mov	r1, #40
	mov	r9, #1
	mov	r10, #88
	add	r3, r3, #92
	bne	.L612
.L668:
	cmp	r9, #0
	ldrne	r3, .L670+4
	strne	r10, [r3, #12]
	strne	r1, [r3, #8]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ldrne	r2, [sp, #24]
	ldrne	r3, .L670+4
	strne	r2, [r3, #104]
	ldrne	r2, [sp, #20]
	strne	r2, [r3, #100]
	ldr	r3, [sp, #32]
	cmp	r3, #0
	ldrne	r2, [sp, #36]
	ldrne	r3, .L670+4
	strne	r2, [r3, #196]
	ldrne	r2, [sp, #40]
	strne	r2, [r3, #192]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	ldrne	r2, [sp, #8]
	ldrne	r3, .L670+4
	strne	r2, [r3, #288]
	ldrne	r2, [sp, #12]
	strne	r2, [r3, #284]
	ldr	r3, [sp, #48]
	cmp	r3, #0
	ldrne	r2, [sp, #44]
	ldrne	r3, .L670+4
	strne	r2, [r3, #380]
	ldrne	r2, [sp, #52]
	strne	r2, [r3, #376]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	ldrne	r2, [sp, #56]
	ldrne	r3, .L670+4
	strne	r2, [r3, #472]
	ldrne	r2, [sp, #64]
	strne	r2, [r3, #468]
	ldr	r3, [sp, #72]
	cmp	r3, #0
	ldrne	r2, [sp, #68]
	ldrne	r3, .L670+4
	strne	r2, [r3, #564]
	ldrne	r2, [sp, #76]
	ldr	lr, [sp, #28]
	strne	r2, [r3, #560]
	ldr	r3, [sp, #92]
	cmp	r3, #0
	ldrne	r2, [sp, #88]
	ldrne	r3, .L670+4
	strne	r2, [r3, #656]
	ldrne	r2, [sp, #96]
	strne	r2, [r3, #652]
	ldr	r3, [sp, #104]
	cmp	r3, #0
	ldrne	r2, [sp, #100]
	ldrne	r3, .L670+4
	strne	r2, [r3, #748]
	ldrne	r2, [sp, #108]
	strne	r2, [r3, #744]
	cmp	lr, #0
	ldrne	r2, [sp, #80]
	ldrne	r3, .L670+4
	strne	r2, [r3, #840]
	ldrne	r2, [sp, #84]
	strne	r2, [r3, #836]
.L607:
	add	sp, sp, #116
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L623:
	mov	r1, #72
	mov	r9, #1
	mov	r10, r1
	b	.L611
.L626:
	mov	lr, #64
	str	lr, [sp, #12]
	mov	lr, #1
	str	lr, [sp, #4]
	mov	lr, #384
	str	lr, [sp, #8]
	b	.L611
.L624:
	mov	lr, #100
	str	lr, [sp, #20]
	mov	lr, #232
	str	r2, [sp, #16]
	str	lr, [sp, #24]
	b	.L611
.L633:
	mov	lr, #112
	str	lr, [sp, #20]
	mov	lr, #224
	str	r2, [sp, #16]
	str	lr, [sp, #24]
	b	.L611
.L625:
	mov	lr, #100
	str	lr, [sp, #40]
	mov	lr, #1
	str	lr, [sp, #32]
	mov	lr, #336
	str	lr, [sp, #36]
	b	.L611
.L634:
	mov	lr, #16
	str	lr, [sp, #40]
	mov	lr, #1
	str	lr, [sp, #32]
	mov	lr, #224
	str	lr, [sp, #36]
	b	.L611
.L628:
	mov	lr, #56
	str	lr, [sp, #64]
	mov	lr, #1
	str	lr, [sp, #60]
	mov	lr, #304
	str	lr, [sp, #56]
	b	.L611
.L627:
	mov	lr, #16
	str	lr, [sp, #52]
	mov	lr, #1
	str	lr, [sp, #48]
	mov	lr, #376
	str	lr, [sp, #44]
	b	.L611
.L629:
	mov	lr, #56
	str	lr, [sp, #76]
	mov	lr, #1
	str	lr, [sp, #72]
	mov	lr, #240
	str	lr, [sp, #68]
	b	.L611
.L669:
	mov	lr, #16
	str	lr, [sp, #108]
	mov	lr, #1
	str	lr, [sp, #104]
	mov	lr, #184
	str	lr, [sp, #100]
	b	.L611
.L630:
	mov	lr, #16
	str	lr, [sp, #96]
	mov	lr, #1
	str	lr, [sp, #92]
	mov	lr, #40
	str	lr, [sp, #88]
	b	.L611
.L671:
	.align	2
.L670:
	.word	moleGuyCount
	.word	moleGuys
	.word	levelsCleared
	.size	initMoleGuys, .-initMoleGuys
	.align	2
	.global	updateMoleGuy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMoleGuy, %function
updateMoleGuy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	cmp	r3, #0
	bxne	lr
	b	updateMoleGuy.part.0
	.size	updateMoleGuy, .-updateMoleGuy
	.align	2
	.global	drawMoleGuys
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMoleGuys, %function
drawMoleGuys:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L693
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, [r3]
	cmp	r4, #0
	ble	.L674
	ldr	r1, .L693+4
	add	r0, r4, r4, lsl #1
	ldr	r10, .L693+8
	ldr	r2, .L693+12
	ldr	r3, .L693+16
	rsb	r4, r4, r0, lsl #3
	ldrh	r9, [r1]
	mov	r6, #0
	ldr	r1, [r10]
	ldrh	r8, [r2]
	ldr	r0, .L693+20
	ldr	r7, .L693+24
	ldr	fp, .L693+28
	add	r4, r3, r4, lsl #2
	b	.L682
.L690:
	mov	r6, #1
	lsl	ip, r1, #3
	ldrh	r2, [r0, ip]
	orr	r2, r2, #512
	strh	r2, [r0, ip]	@ movhi
	add	r1, r1, #1
.L678:
	add	r3, r3, #92
	cmp	r3, r4
	beq	.L689
.L682:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	bne	.L690
	ldr	r2, [r3, #12]
	ldr	lr, [r3, #8]
	ldr	ip, [r3, #60]
	sub	r2, r2, r8
	sub	lr, lr, r9
	and	lr, lr, #255
	and	r2, r2, r7
	lsl	r5, r1, #3
	strh	lr, [r0, r5]	@ movhi
	orr	r2, r2, #16384
	add	lr, r0, r1, lsl #3
	cmp	ip, #1
	strh	r2, [lr, #2]	@ movhi
	beq	.L691
	cmp	ip, #2
	bne	.L678
	ldr	r2, [r3, #68]
	cmp	r2, #1
	beq	.L692
	cmp	r2, #0
	moveq	r6, #1
	moveq	r2, #848	@ movhi
	add	r3, r3, #92
	strheq	r2, [lr, #4]	@ movhi
	addeq	r1, r1, r6
	cmp	r3, r4
	bne	.L682
.L689:
	cmp	r6, #0
	strne	r1, [r10]
.L674:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L691:
	ldr	r2, [r3, #68]
	cmp	r2, #0
	moveq	r6, ip
	strheq	fp, [lr, #4]	@ movhi
	addeq	r1, r1, #1
	beq	.L678
.L680:
	cmp	r2, #1
	ldreq	ip, .L693+32
	moveq	r6, r2
	strheq	ip, [lr, #4]	@ movhi
	addeq	r1, r1, #1
	b	.L678
.L692:
	mov	ip, #784	@ movhi
	mov	r6, r2
	strh	ip, [lr, #4]	@ movhi
	add	r1, r1, #1
	b	.L678
.L694:
	.align	2
.L693:
	.word	moleGuyCount
	.word	vOff
	.word	shadowOAMIndex
	.word	hOff
	.word	moleGuys
	.word	shadowOAM
	.word	511
	.word	850
	.word	786
	.size	drawMoleGuys, .-drawMoleGuys
	.align	2
	.global	initMoleBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMoleBullets, %function
initMoleBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L703
	ldr	r1, [r3]
	cmp	r1, #0
	bxle	lr
	mov	r0, #1
	mov	ip, #2
	push	{r4, r5, lr}
	mov	r2, #8
	mvn	r4, #7
	mov	lr, #0
	ldr	r3, .L703+4
	add	r5, r1, r1, lsl r0
	rsb	r1, r1, r5, lsl #3
	add	r1, r3, r1, lsl ip
.L697:
	str	r2, [r3, #28]
	str	r2, [r3, #24]
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	str	ip, [r3, #20]
	str	r0, [r3, #52]
	add	r3, r3, #92
	cmp	r3, r1
	bne	.L697
	pop	{r4, r5, lr}
	bx	lr
.L704:
	.align	2
.L703:
	.word	moleBulletCount
	.word	moleBullets
	.size	initMoleBullets, .-initMoleBullets
	.align	2
	.global	updateMoleBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMoleBullet, %function
updateMoleBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #52]
	cmp	r2, #0
	mov	r3, r0
	bxne	lr
	ldr	r2, [r0, #60]
	cmp	r2, #1
	beq	.L709
	cmp	r2, #2
	bxne	lr
	b	updateMoleBullet.part.0
.L709:
	ldr	ip, .L710
	ldr	r0, [r0, #12]
	ldr	r1, [r3, #24]
	ldr	ip, [ip]
	add	r1, r0, r1
	sub	r1, r1, ip
	cmp	r1, #255
	ldrle	r2, [r3, #20]
	addle	r0, r2, r0
	strle	r0, [r3, #12]
	strgt	r2, [r3, #52]
	bx	lr
.L711:
	.align	2
.L710:
	.word	hOff
	.size	updateMoleBullet, .-updateMoleBullet
	.align	2
	.global	drawMoleBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMoleBullets, %function
drawMoleBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L721
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	lr, [r3]
	cmp	lr, #0
	ble	.L712
	ldr	r9, .L721+4
	ldr	r0, .L721+8
	ldr	r1, .L721+12
	ldr	r8, [r9]
	ldr	r2, .L721+16
	ldr	r3, .L721+20
	add	ip, lr, lr, lsl #1
	rsb	ip, lr, ip, lsl #3
	ldrh	r7, [r0]
	ldrh	r6, [r1]
	ldr	r5, .L721+24
	ldr	r4, .L721+28
	add	r2, r2, r8, lsl #3
	add	ip, r3, ip, lsl #2
	b	.L716
.L720:
	ldrh	r1, [r2]
	add	r3, r3, #92
	orr	r1, r1, #512
	cmp	r3, ip
	strh	r1, [r2]	@ movhi
	add	r2, r2, #8
	beq	.L719
.L716:
	ldr	r1, [r3, #52]
	cmp	r1, #0
	bne	.L720
	add	r0, r3, #8
	ldm	r0, {r0, r1}
	add	r3, r3, #92
	sub	r0, r0, r7
	sub	r1, r1, r6
	and	r0, r0, #255
	and	r1, r1, r5
	cmp	r3, ip
	strh	r4, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	r2, r2, #8
	bne	.L716
.L719:
	add	lr, r8, lr
	str	lr, [r9]
.L712:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L722:
	.align	2
.L721:
	.word	moleBulletCount
	.word	shadowOAMIndex
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	moleBullets
	.word	511
	.word	889
	.size	drawMoleBullets, .-drawMoleBullets
	.align	2
	.global	initSniperJoes
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSniperJoes, %function
initSniperJoes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L781
	ldr	r4, [r3]
	cmp	r4, #0
	sub	sp, sp, #108
	ble	.L723
	mov	r5, #0
	ldr	ip, .L781+4
	ldr	lr, [ip, #748]
	str	lr, [sp, #48]
	ldr	lr, [ip, #744]
	str	lr, [sp, #52]
	ldr	lr, [ip, #656]
	str	lr, [sp, #92]
	ldr	lr, [ip, #652]
	str	lr, [sp, #100]
	ldr	lr, [ip, #564]
	str	lr, [sp, #80]
	ldr	lr, [ip, #560]
	str	lr, [sp, #88]
	ldr	lr, [ip, #472]
	str	lr, [sp, #68]
	ldr	lr, [ip, #468]
	str	lr, [sp, #76]
	ldr	lr, [ip, #380]
	str	lr, [sp, #56]
	ldr	lr, [ip, #376]
	str	lr, [sp, #64]
	ldr	lr, [ip, #288]
	str	lr, [sp, #16]
	ldr	lr, [ip, #284]
	str	lr, [sp, #20]
	ldr	lr, [ip, #196]
	str	r5, [sp, #96]
	str	r5, [sp, #84]
	str	r5, [sp, #72]
	str	r5, [sp, #60]
	str	r5, [sp, #12]
	str	r5, [sp, #36]
	str	r5, [sp, #24]
	str	lr, [sp, #40]
	ldr	lr, [ip, #192]
	str	lr, [sp, #44]
	ldr	lr, [ip, #104]
	str	lr, [sp, #32]
	ldr	lr, [ip, #100]
	mov	r3, ip
	ldr	r0, .L781+8
	str	lr, [sp, #28]
	ldr	lr, [ip, #12]
	ldr	ip, [ip, #8]
	str	lr, [sp, #8]
	mov	fp, r5
	mov	r2, r5
	mov	r10, r5
	mov	r1, #16
	mov	r9, #10
	mov	r8, #60
	mov	r7, #1
	mov	r6, #160
	str	ip, [sp, #4]
	ldr	lr, [r0]
	b	.L728
.L726:
	cmp	lr, #4
	bne	.L727
	cmp	r2, #0
	beq	.L747
	cmp	r2, #1
	beq	.L748
	cmp	r2, #2
	beq	.L749
	cmp	r2, #3
	ldr	r0, [sp, #20]
	moveq	r0, #104
	str	r0, [sp, #20]
	ldr	r0, [sp, #12]
	moveq	r0, #1
	str	r0, [sp, #12]
	ldr	r0, [sp, #16]
	moveq	r0, #312
	str	r0, [sp, #16]
.L727:
	add	r2, r2, #1
	cmp	r2, r4
	add	r3, r3, #92
	beq	.L780
.L728:
	mov	ip, #240
	mov	r0, #2
	cmp	lr, #3
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r9, [r3, #64]
	str	r8, [r3, #56]
	str	r10, [r3, #52]
	str	r7, [r3, #68]
	str	r6, [r3, #72]
	str	ip, [r3, #76]
	str	r0, [r3, #60]
	bne	.L726
	cmp	r2, #0
	beq	.L738
	cmp	r2, #1
	beq	.L739
	cmp	r2, r0
	beq	.L740
	cmp	r2, #3
	beq	.L741
	cmp	r2, #4
	beq	.L742
	cmp	r2, #5
	beq	.L743
	cmp	r2, #6
	beq	.L744
	cmp	r2, #7
	beq	.L745
	cmp	r2, #8
	ldr	r0, [sp, #52]
	moveq	r0, #16
	str	r0, [sp, #52]
	ldr	r0, [sp, #48]
	moveq	r0, #110
	moveq	r5, #1
	str	r0, [sp, #48]
	b	.L727
.L747:
	mov	r0, #104
	str	r0, [sp, #4]
	mov	r0, #118
	add	r2, r2, #1
	cmp	r2, r4
	mov	fp, #1
	str	r0, [sp, #8]
	add	r3, r3, #92
	bne	.L728
.L780:
	cmp	fp, #0
	ldrne	r2, [sp, #8]
	ldrne	r3, .L781+4
	strne	r2, [r3, #12]
	ldrne	r2, [sp, #4]
	strne	r2, [r3, #8]
	ldr	r3, [sp, #24]
	cmp	r3, #0
	ldrne	r2, [sp, #32]
	ldrne	r3, .L781+4
	strne	r2, [r3, #104]
	ldrne	r2, [sp, #28]
	strne	r2, [r3, #100]
	ldr	r3, [sp, #36]
	cmp	r3, #0
	ldrne	r2, [sp, #40]
	ldrne	r3, .L781+4
	strne	r2, [r3, #196]
	ldrne	r2, [sp, #44]
	strne	r2, [r3, #192]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	ldrne	r2, [sp, #16]
	ldrne	r3, .L781+4
	strne	r2, [r3, #288]
	ldrne	r2, [sp, #20]
	strne	r2, [r3, #284]
	ldr	r3, [sp, #60]
	cmp	r3, #0
	ldrne	r2, [sp, #56]
	ldrne	r3, .L781+4
	strne	r2, [r3, #380]
	ldrne	r2, [sp, #64]
	strne	r2, [r3, #376]
	ldr	r3, [sp, #72]
	cmp	r3, #0
	ldrne	r2, [sp, #68]
	ldrne	r3, .L781+4
	strne	r2, [r3, #472]
	ldrne	r2, [sp, #76]
	strne	r2, [r3, #468]
	ldr	r3, [sp, #84]
	cmp	r3, #0
	ldrne	r2, [sp, #80]
	ldrne	r3, .L781+4
	strne	r2, [r3, #564]
	ldrne	r2, [sp, #88]
	strne	r2, [r3, #560]
	ldr	r3, [sp, #96]
	cmp	r3, #0
	ldrne	r2, [sp, #92]
	ldrne	r3, .L781+4
	strne	r2, [r3, #656]
	ldrne	r2, [sp, #100]
	strne	r2, [r3, #652]
	cmp	r5, #0
	ldrne	r2, [sp, #48]
	ldrne	r3, .L781+4
	strne	r2, [r3, #748]
	ldrne	r2, [sp, #52]
	strne	r2, [r3, #744]
.L723:
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L738:
	mov	fp, #1
	mov	r0, #56
	stmib	sp, {r0, fp}
	b	.L727
.L741:
	mov	r0, #68
	str	r0, [sp, #20]
	mov	r0, #1
	str	r0, [sp, #12]
	mov	r0, #264
	str	r0, [sp, #16]
	b	.L727
.L739:
	mov	r0, #68
	str	r0, [sp, #28]
	mov	r0, #88
	str	r2, [sp, #24]
	str	r0, [sp, #32]
	b	.L727
.L748:
	mov	r0, #8
	str	r0, [sp, #28]
	mov	r0, #164
	str	r2, [sp, #24]
	str	r0, [sp, #32]
	b	.L727
.L740:
	mov	r0, #68
	str	r0, [sp, #44]
	mov	r0, #1
	str	r0, [sp, #36]
	mov	r0, #206
	str	r0, [sp, #40]
	b	.L727
.L749:
	mov	r0, #8
	str	r0, [sp, #44]
	mov	r0, #1
	str	r0, [sp, #36]
	mov	r0, #304
	str	r0, [sp, #40]
	b	.L727
.L743:
	mov	r0, #48
	str	r0, [sp, #76]
	mov	r0, #1
	str	r0, [sp, #72]
	mov	r0, #464
	str	r0, [sp, #68]
	b	.L727
.L742:
	mov	r0, #68
	str	r0, [sp, #64]
	mov	r0, #1
	str	r0, [sp, #60]
	ldr	r0, .L781+12
	str	r0, [sp, #56]
	b	.L727
.L744:
	mov	r0, #16
	str	r0, [sp, #88]
	mov	r0, #1
	str	r0, [sp, #84]
	ldr	r0, .L781+16
	str	r0, [sp, #80]
	b	.L727
.L745:
	mov	r0, #16
	str	r0, [sp, #100]
	mov	r0, #1
	str	r0, [sp, #96]
	mov	r0, #152
	str	r0, [sp, #92]
	b	.L727
.L782:
	.align	2
.L781:
	.word	sniperJoeCount
	.word	sniperJoes
	.word	levelsCleared
	.word	366
	.word	302
	.size	initSniperJoes, .-initSniperJoes
	.align	2
	.global	updateSniperJoe
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSniperJoe, %function
updateSniperJoe:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	cmp	r3, #0
	bxne	lr
	b	updateSniperJoe.part.0
	.size	updateSniperJoe, .-updateSniperJoe
	.align	2
	.global	animateSniperJoes
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateSniperJoes, %function
animateSniperJoes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L795
	push	{r4, r5, r6, lr}
	ldr	lr, [r3]
	cmp	lr, #0
	ble	.L785
	mov	r6, #1
	mov	r5, #2
	ldr	r2, .L795+4
	add	r3, lr, lr, lsl r6
	rsb	lr, lr, r3, lsl #3
	ldr	r4, .L795+8
	add	lr, r2, lr, lsl r5
.L791:
	ldr	r3, [r2, #60]
	cmp	r3, #1
	moveq	r0, #28
	movne	r0, #24
	ldr	r1, [r2, #32]
	smull	r3, ip, r4, r1
	asr	r3, r1, #31
	rsb	r3, r3, ip, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r1, r3, lsl #1
	str	r0, [r2, #36]
	bne	.L788
	ldr	r0, [r2, #68]
	cmp	r0, #1
	streq	r3, [r2, #44]
	beq	.L788
	cmp	r0, #0
	bne	.L790
	ldr	r3, [r2, #72]
	cmp	r3, #10
	strle	r6, [r2, #44]
	ble	.L788
.L790:
	str	r5, [r2, #44]
.L788:
	add	r1, r1, #1
	str	r1, [r2, #32]
	add	r2, r2, #92
	cmp	r2, lr
	bne	.L791
.L785:
	pop	{r4, r5, r6, lr}
	bx	lr
.L796:
	.align	2
.L795:
	.word	sniperJoeCount
	.word	sniperJoes
	.word	1717986919
	.size	animateSniperJoes, .-animateSniperJoes
	.align	2
	.global	drawSniperJoes
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSniperJoes, %function
drawSniperJoes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L806
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	lr, [r3]
	cmp	lr, #0
	ble	.L797
	ldr	r9, .L806+4
	ldr	r0, .L806+8
	ldr	r1, .L806+12
	ldr	r8, [r9]
	ldr	r2, .L806+16
	ldr	r3, .L806+20
	add	ip, lr, lr, lsl #1
	rsb	ip, lr, ip, lsl #3
	ldrh	r7, [r0]
	ldrh	r6, [r1]
	ldr	r5, .L806+24
	ldr	r4, .L806+28
	add	r2, r2, r8, lsl #3
	add	ip, r3, ip, lsl #2
	b	.L801
.L805:
	ldrh	r1, [r2]
	add	r3, r3, #92
	orr	r1, r1, #512
	cmp	r3, ip
	strh	r1, [r2]	@ movhi
	add	r2, r2, #8
	beq	.L804
.L801:
	ldr	r1, [r3, #52]
	cmp	r1, #0
	bne	.L805
	ldr	r0, [r3, #44]
	ldr	r1, [r3, #36]
	ldr	r10, [r3, #12]
	add	r0, r0, #1
	add	r0, r0, r1, lsl #3
	ldr	r1, [r3, #8]
	sub	r10, r10, r6
	and	r10, r10, r5
	sub	r1, r1, r7
	add	r3, r3, #92
	orr	r10, r10, r4
	lsl	r0, r0, #2
	and	r1, r1, #255
	cmp	r3, ip
	strh	r10, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	strh	r1, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L801
.L804:
	add	lr, r8, lr
	str	lr, [r9]
.L797:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L807:
	.align	2
.L806:
	.word	sniperJoeCount
	.word	shadowOAMIndex
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	sniperJoes
	.word	511
	.word	-32768
	.size	drawSniperJoes, .-drawSniperJoes
	.align	2
	.global	initJoeBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initJoeBullets, %function
initJoeBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L816
	ldr	r1, [r3]
	cmp	r1, #0
	bxle	lr
	mov	r0, #1
	mov	ip, #2
	push	{r4, r5, lr}
	mov	r2, #8
	mvn	r4, #7
	mov	lr, #0
	ldr	r3, .L816+4
	add	r5, r1, r1, lsl r0
	rsb	r1, r1, r5, lsl #3
	add	r1, r3, r1, lsl ip
.L810:
	str	r2, [r3, #28]
	str	r2, [r3, #24]
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	str	ip, [r3, #20]
	str	r0, [r3, #52]
	add	r3, r3, #92
	cmp	r3, r1
	bne	.L810
	pop	{r4, r5, lr}
	bx	lr
.L817:
	.align	2
.L816:
	.word	joeBulletCount
	.word	joeBullets
	.size	initJoeBullets, .-initJoeBullets
	.align	2
	.global	updateJoeBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateJoeBullet, %function
updateJoeBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #52]
	cmp	r2, #0
	mov	r3, r0
	bxne	lr
	ldr	r2, [r0, #60]
	cmp	r2, #1
	beq	.L822
	cmp	r2, #2
	bxne	lr
	b	updateJoeBullet.part.0
.L822:
	ldr	ip, .L823
	ldr	r0, [r0, #12]
	ldr	r1, [r3, #24]
	ldr	ip, [ip]
	add	r1, r0, r1
	sub	r1, r1, ip
	cmp	r1, #255
	ldrle	r2, [r3, #20]
	addle	r0, r2, r0
	strle	r0, [r3, #12]
	strgt	r2, [r3, #52]
	bx	lr
.L824:
	.align	2
.L823:
	.word	hOff
	.size	updateJoeBullet, .-updateJoeBullet
	.align	2
	.global	drawJoeBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawJoeBullets, %function
drawJoeBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L834
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	lr, [r3]
	cmp	lr, #0
	ble	.L825
	ldr	r9, .L834+4
	ldr	r0, .L834+8
	ldr	r1, .L834+12
	ldr	r8, [r9]
	ldr	r2, .L834+16
	ldr	r3, .L834+20
	add	ip, lr, lr, lsl #1
	rsb	ip, lr, ip, lsl #3
	ldrh	r7, [r0]
	ldrh	r6, [r1]
	ldr	r5, .L834+24
	ldr	r4, .L834+28
	add	r2, r2, r8, lsl #3
	add	ip, r3, ip, lsl #2
	b	.L829
.L833:
	ldrh	r1, [r2]
	add	r3, r3, #92
	orr	r1, r1, #512
	cmp	r3, ip
	strh	r1, [r2]	@ movhi
	add	r2, r2, #8
	beq	.L832
.L829:
	ldr	r1, [r3, #52]
	cmp	r1, #0
	bne	.L833
	add	r0, r3, #8
	ldm	r0, {r0, r1}
	add	r3, r3, #92
	sub	r0, r0, r7
	sub	r1, r1, r6
	and	r0, r0, #255
	and	r1, r1, r5
	cmp	r3, ip
	strh	r4, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	r2, r2, #8
	bne	.L829
.L832:
	add	lr, r8, lr
	str	lr, [r9]
.L825:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L835:
	.align	2
.L834:
	.word	joeBulletCount
	.word	shadowOAMIndex
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	joeBullets
	.word	511
	.word	889
	.size	drawJoeBullets, .-drawJoeBullets
	.align	2
	.global	initHoriOctoEyes
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHoriOctoEyes, %function
initHoriOctoEyes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L881
	ldr	r4, [r3]
	cmp	r4, #0
	sub	sp, sp, #60
	ble	.L836
	mov	r6, #0
	mov	ip, #16
	mov	fp, r6
	mov	r7, r6
	mov	r2, r6
	mov	r1, r6
	mov	r5, #8
	mov	r0, #1
	ldr	r8, .L881+4
	ldr	r9, [r8, #472]
	str	r9, [sp, #12]
	ldr	r9, [r8, #468]
	str	r9, [sp, #16]
	ldr	r9, [r8, #380]
	str	r9, [sp, #48]
	ldr	r9, [r8, #376]
	str	r9, [sp, #52]
	ldr	r9, [r8, #288]
	str	r9, [sp, #36]
	ldr	r9, [r8, #284]
	str	r9, [sp, #40]
	ldr	r9, [r8, #196]
	str	r9, [sp, #24]
	ldr	r9, [r8, #192]
	str	r9, [sp, #28]
	ldr	r9, [r8, #104]
	ldr	lr, .L881+8
	str	r9, [sp, #8]
	ldr	r9, [r8, #100]
	mov	r10, r8
	mov	r3, r8
	add	r8, r8, #8
	str	r9, [sp, #4]
	str	r6, [sp, #44]
	str	r6, [sp, #32]
	str	r6, [sp, #20]
	ldm	r8, {r8, r9}
	ldr	lr, [lr]
	str	r6, [sp]
.L841:
	cmp	lr, #0
	str	ip, [r3, #24]
	str	ip, [r3, #28]
	str	r5, [r3, #64]
	str	r1, [r3, #52]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #60]
	str	r1, [r3, #80]
	str	r1, [r3, #76]
	bne	.L839
	cmp	r2, #0
	beq	.L848
	cmp	r2, #1
	beq	.L849
	cmp	r2, #2
	beq	.L850
	cmp	r2, #3
	beq	.L851
	cmp	r2, #4
	beq	.L852
	cmp	r2, #5
	ldr	r6, [sp, #16]
	moveq	r6, #112
	str	r6, [sp, #16]
	ldr	r6, [sp]
	moveq	r6, #1
	str	r6, [sp]
	ldr	r6, [sp, #12]
	moveq	r6, #496
	str	r6, [sp, #12]
.L840:
	add	r2, r2, #1
	cmp	r2, r4
	add	r3, r3, #92
	bne	.L841
.L880:
	cmp	r7, #0
	strne	r9, [r10, #12]
	strne	r8, [r10, #8]
	cmp	fp, #0
	ldrne	r3, [sp, #8]
	strne	r3, [r10, #104]
	ldrne	r3, [sp, #4]
	strne	r3, [r10, #100]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	ldrne	r3, [sp, #24]
	strne	r3, [r10, #196]
	ldrne	r3, [sp, #28]
	strne	r3, [r10, #192]
	ldr	r3, [sp, #32]
	cmp	r3, #0
	ldrne	r3, [sp, #36]
	strne	r3, [r10, #288]
	ldrne	r3, [sp, #40]
	strne	r3, [r10, #284]
	ldr	r3, [sp, #44]
	cmp	r3, #0
	ldrne	r3, [sp, #48]
	ldr	r6, [sp]
	strne	r3, [r10, #380]
	ldrne	r3, [sp, #52]
	strne	r3, [r10, #376]
	cmp	r6, #0
	ldrne	r3, [sp, #12]
	strne	r3, [r10, #472]
	ldrne	r3, [sp, #16]
	strne	r3, [r10, #468]
.L836:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L839:
	cmp	lr, #4
	bne	.L840
	cmp	r2, #0
	beq	.L854
	cmp	r2, #1
	beq	.L855
	cmp	r2, #2
	beq	.L856
	cmp	r2, #3
	beq	.L857
	cmp	r2, #4
	beq	.L858
	cmp	r2, #5
	ldr	r6, [sp, #16]
	moveq	r6, #32
	str	r6, [sp, #16]
	ldr	r6, [sp]
	moveq	r6, #1
	str	r6, [sp]
	ldr	r6, [sp, #12]
	moveq	r6, #400
	add	r2, r2, #1
	cmp	r2, r4
	str	r6, [sp, #12]
	add	r3, r3, #92
	bne	.L841
	b	.L880
.L848:
	mov	r9, r2
	add	r2, r2, #1
	cmp	r2, r4
	mov	r8, #64
	mov	r7, #1
	add	r3, r3, #92
	bne	.L841
	b	.L880
.L854:
	add	r2, r2, #1
	cmp	r2, r4
	mov	r8, #32
	mov	r7, #1
	mov	r9, #128
	add	r3, r3, #92
	bne	.L841
	b	.L880
.L849:
	mov	fp, #32
	mov	r6, #80
	str	fp, [sp, #4]
	mov	fp, r2
	add	r2, r2, #1
	cmp	r2, r4
	str	r6, [sp, #8]
	add	r3, r3, #92
	bne	.L841
	b	.L880
.L857:
	mov	r6, #48
	str	r6, [sp, #40]
	mov	r6, #1
	str	r6, [sp, #32]
	mov	r6, #368
	add	r2, r2, #1
	cmp	r2, r4
	str	r6, [sp, #36]
	add	r3, r3, #92
	bne	.L841
	b	.L880
.L855:
	mov	r6, #72
	str	r6, [sp, #4]
	mov	r6, #160
	mov	fp, r2
	add	r2, r2, #1
	cmp	r2, r4
	str	r6, [sp, #8]
	add	r3, r3, #92
	bne	.L841
	b	.L880
.L850:
	mov	r6, #82
	str	r6, [sp, #28]
	mov	r6, #1
	str	r6, [sp, #20]
	mov	r6, #224
	add	r2, r2, #1
	cmp	r2, r4
	str	r6, [sp, #24]
	add	r3, r3, #92
	bne	.L841
	b	.L880
.L856:
	mov	r6, #88
	str	r6, [sp, #28]
	mov	r6, #1
	str	r6, [sp, #20]
	mov	r6, #304
	add	r2, r2, #1
	cmp	r2, r4
	str	r6, [sp, #24]
	add	r3, r3, #92
	bne	.L841
	b	.L880
.L851:
	mov	r6, #82
	str	r6, [sp, #40]
	mov	r6, #1
	str	r6, [sp, #32]
	mov	r6, #316
	add	r2, r2, #1
	cmp	r2, r4
	str	r6, [sp, #36]
	add	r3, r3, #92
	bne	.L841
	b	.L880
.L852:
	mov	r6, #92
	str	r6, [sp, #52]
	mov	r6, #1
	str	r6, [sp, #44]
	mov	r6, #496
	add	r2, r2, #1
	cmp	r2, r4
	str	r6, [sp, #48]
	add	r3, r3, #92
	bne	.L841
	b	.L880
.L858:
	mov	r6, #64
	str	r6, [sp, #52]
	mov	r6, #1
	str	r6, [sp, #44]
	mov	r6, #368
	add	r2, r2, #1
	cmp	r2, r4
	str	r6, [sp, #48]
	add	r3, r3, #92
	bne	.L841
	b	.L880
.L882:
	.align	2
.L881:
	.word	horiOctoEyeCount
	.word	horiOctoEyes
	.word	levelsCleared
	.size	initHoriOctoEyes, .-initHoriOctoEyes
	.align	2
	.global	updateHoriOctoEye
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHoriOctoEye, %function
updateHoriOctoEye:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	cmp	r3, #0
	bxne	lr
	b	updateHoriOctoEye.part.0
	.size	updateHoriOctoEye, .-updateHoriOctoEye
	.align	2
	.global	animateHoriEyes
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateHoriEyes, %function
animateHoriEyes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L897
	ldr	ip, [r3]
	cmp	ip, #0
	bxle	lr
	push	{r4, r5, r6, lr}
	mov	r4, #1
	mov	r5, #2
	mov	lr, #0
	ldr	r3, .L897+4
	add	r2, ip, ip, lsl r4
	rsb	ip, ip, r2, lsl #3
	ldr	r6, .L897+8
	add	ip, r3, ip, lsl r5
.L890:
	ldr	r2, [r3, #32]
	smull	r1, r0, r6, r2
	asr	r1, r2, #31
	rsb	r1, r1, r0, asr #2
	add	r1, r1, r1, lsl #2
	cmp	r2, r1, lsl #1
	str	lr, [r3, #36]
	bne	.L887
	ldr	r1, [r3, #80]
	cmp	r1, #0
	beq	.L896
	ldr	r1, [r3, #76]
	cmp	r1, #19
	movgt	r1, r5
	movle	r1, r4
.L896:
	str	r1, [r3, #44]
.L887:
	add	r2, r2, #1
	str	r2, [r3, #32]
	add	r3, r3, #92
	cmp	r3, ip
	bne	.L890
	pop	{r4, r5, r6, lr}
	bx	lr
.L898:
	.align	2
.L897:
	.word	horiOctoEyeCount
	.word	horiOctoEyes
	.word	1717986919
	.size	animateHoriEyes, .-animateHoriEyes
	.align	2
	.global	drawHoriOctoEyes
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHoriOctoEyes, %function
drawHoriOctoEyes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L908
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, [r3]
	cmp	r4, #0
	ble	.L899
	ldr	r9, .L908+4
	ldr	r0, .L908+8
	ldr	r1, .L908+12
	ldr	r8, [r9]
	ldr	r2, .L908+16
	ldr	r3, .L908+20
	add	lr, r4, r4, lsl #1
	rsb	lr, r4, lr, lsl #3
	ldrh	r7, [r0]
	ldrh	r6, [r1]
	ldr	r5, .L908+24
	add	r2, r2, r8, lsl #3
	add	lr, r3, lr, lsl #2
	b	.L903
.L907:
	ldrh	r1, [r2]
	add	r3, r3, #92
	orr	r1, r1, #512
	cmp	r3, lr
	strh	r1, [r2]	@ movhi
	add	r2, r2, #8
	beq	.L906
.L903:
	ldr	r1, [r3, #52]
	cmp	r1, #0
	bne	.L907
	ldr	r1, [r3, #12]
	ldr	ip, [r3, #8]
	ldr	r10, [r3, #44]
	ldr	r0, [r3, #36]
	sub	r1, r1, r6
	and	r1, r1, r5
	sub	ip, ip, r7
	add	r10, r10, #12
	add	r3, r3, #92
	orr	r1, r1, #16384
	and	ip, ip, #255
	add	r0, r0, r10, lsl #6
	cmp	r3, lr
	strh	r1, [r2, #2]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	add	r2, r2, #8
	bne	.L903
.L906:
	add	r4, r8, r4
	str	r4, [r9]
.L899:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L909:
	.align	2
.L908:
	.word	horiOctoEyeCount
	.word	shadowOAMIndex
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	horiOctoEyes
	.word	511
	.size	drawHoriOctoEyes, .-drawHoriOctoEyes
	.align	2
	.global	initVertOctoEyes
	.syntax unified
	.arm
	.fpu softvfp
	.type	initVertOctoEyes, %function
initVertOctoEyes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L931
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, [r3]
	cmp	r5, #0
	ble	.L910
	mov	r2, #0
	ldr	lr, .L931+4
	ldr	r3, .L931+8
	mov	ip, #16
	mov	r1, r2
	mov	r6, #8
	mov	r0, #1
	mov	fp, #496
	mov	r10, #256
	mov	r7, #48
	ldr	lr, [lr]
	sub	r4, r3, #8
	b	.L924
.L912:
	cmp	lr, #4
	bne	.L914
	cmp	r2, #0
	bne	.L920
	mov	r8, #32
	str	r7, [r4, #8]
	str	r8, [r4, #12]
.L914:
	add	r2, r2, #1
	cmp	r2, r5
	add	r3, r3, #92
	beq	.L910
.L924:
	cmp	lr, #1
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r6, [r3, #56]
	str	r1, [r3, #44]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #52]
	str	r1, [r3, #72]
	str	r1, [r3, #68]
	bne	.L912
	cmp	r2, #0
	bne	.L913
	mov	r9, #96
	mov	r8, #136
	add	r2, r2, #1
	cmp	r2, r5
	str	r9, [r4, #12]
	str	r8, [r4, #8]
	add	r3, r3, #92
	bne	.L924
.L910:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L920:
	cmp	r2, #1
	moveq	r8, #32
	streq	r1, [r4, #100]
	streq	r8, [r4, #104]
	beq	.L914
	cmp	r2, #2
	moveq	r8, #192
	streq	r7, [r4, #192]
	streq	r8, [r4, #196]
	beq	.L914
	cmp	r2, #3
	streq	r10, [r4, #288]
	streq	r7, [r4, #284]
	beq	.L914
	cmp	r2, #4
	moveq	r8, #24
	streq	fp, [r4, #380]
	streq	r8, [r4, #376]
	b	.L914
.L913:
	cmp	r2, #1
	beq	.L927
	sub	r8, r2, #2
	cmp	r8, #3
	bls	.L928
	cmp	r2, #6
	beq	.L929
	cmp	r2, #7
	beq	.L930
	cmp	r2, #8
	moveq	r9, #64
	moveq	r8, #136
	movne	r9, #208
	movne	r8, #136
	streq	r9, [r4, #748]
	streq	r8, [r4, #744]
	strne	r9, [r4, #840]
	strne	r8, [r4, #836]
	b	.L914
.L928:
	mov	r9, #49
	lsl	r8, r2, #4
	add	r8, r8, #232
	str	r8, [r3, #4]
	str	r9, [r3]
	b	.L914
.L927:
	mov	r9, #176
	mov	r8, #120
	str	r9, [r4, #104]
	str	r8, [r4, #100]
	b	.L914
.L930:
	mov	r9, #456
	mov	r8, #32
	str	r9, [r4, #656]
	str	r8, [r4, #652]
	b	.L914
.L929:
	mov	r9, #424
	mov	r8, #64
	str	r9, [r4, #564]
	str	r8, [r4, #560]
	b	.L914
.L932:
	.align	2
.L931:
	.word	vertOctoEyeCount
	.word	levelsCleared
	.word	vertOctoEyes+8
	.size	initVertOctoEyes, .-initVertOctoEyes
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
	mov	r1, #0
	mov	ip, #300
	mov	r2, #1
	ldr	r0, .L967
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	str	r1, [r0]
	ldr	lr, .L967+4
	ldr	r0, .L967+8
	ldr	r4, .L967+12
	str	r1, [lr]
	str	ip, [r0]
	mov	r3, r1
	str	r1, [r4]
	ldr	lr, .L967+16
	ldr	ip, .L967+20
	ldr	r0, .L967+24
	ldr	r1, .L967+28
.L934:
	str	r2, [lr, r3]
	str	r2, [ip, r3]
	str	r2, [r0, r3]
	str	r2, [r1, r3]
	add	r3, r3, #92
	cmp	r3, #920
	bne	.L934
	ldr	r4, .L967+32
	ldr	r5, .L967+36
	mov	r2, r4
	mov	r1, r5
	mov	r3, #1
	add	r0, r4, #1840
.L935:
	str	r3, [r2, #52]
	add	r2, r2, #92
	cmp	r2, r0
	str	r3, [r1, #52]
	add	r1, r1, #92
	bne	.L935
	ldr	r2, .L967+40
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L936
	mov	r9, #20
	mov	r8, #3
	mov	r7, #60
	mov	r6, #90
	mov	lr, #10
	mov	r1, #6
	mov	r0, #2
	ldr	ip, .L967+44
	str	r9, [ip]
	ldr	ip, .L967+48
	str	r8, [ip]
	ldr	ip, .L967+52
	str	r7, [ip]
	ldr	ip, .L967+56
	str	r6, [ip]
	ldr	ip, .L967+60
	str	lr, [ip]
	ldr	ip, .L967+64
	str	r1, [ip]
	ldr	ip, .L967+68
	str	r1, [ip]
	ldr	r1, .L967+72
	ldr	ip, .L967+76
	str	r0, [r1]
	str	r2, [ip]
	ldr	r0, .L967+80
	ldr	r1, .L967+84
	ldr	ip, .L967+88
	str	r2, [r0]
	str	ip, [r1]
	ldr	r0, .L967+92
	ldr	ip, .L967+96
	ldr	r1, .L967+100
	str	ip, [r0]
	str	r2, [r1]
	ldr	r0, .L967+104
	ldr	ip, .L967+108
	ldr	r1, .L967+112
	str	r2, [r0]
	str	r2, [r1]
	str	r2, [ip]
	ldr	r0, .L967+116
	ldr	r1, .L967+120
	ldr	ip, .L967+124
	str	r3, [r1]
	str	r2, [r0]
	str	r3, [ip]
	ldr	r0, .L967+128
	ldr	r6, .L967+132
	ldr	r1, .L967+136
	ldr	r7, .L967+140
	ldr	r3, .L967+144
	str	r2, [r0]
	str	r2, [r6]
	str	r2, [r1]
	str	r2, [r7]
	str	r2, [r3]
.L937:
	mov	r8, #140
	mov	r2, #100
	mov	lr, #80
	mov	ip, #2
	mov	r0, #12
	mov	r1, #0
	ldr	r3, .L967+148
	str	r8, [r3]
	ldr	r3, .L967+152
.L944:
	str	r2, [r3, #12]
	add	r2, r2, #10
	cmp	r2, #150
	str	lr, [r3, #8]
	str	ip, [r3, #48]
	str	r0, [r3, #32]
	str	r1, [r3, #52]
	add	r3, r3, #92
	bne	.L944
	mov	r0, #6
	mov	r2, #1
	ldr	r3, .L967+156
	str	r0, [r3, #32]
	str	r1, [r3, #44]
	str	r2, [r3, #52]
	bl	initGamePlayer
	mov	r2, #10
	mov	r0, #0
	mov	r1, r2
	ldr	r3, .L967+160
.L945:
	str	r2, [r3, #8]
	add	r2, r2, #4
	cmp	r2, #50
	str	r1, [r3, #12]
	str	r0, [r3, #52]
	add	r3, r3, #92
	bne	.L945
	mov	r2, #18
	mov	lr, #56
	mov	ip, #14
	mov	r0, #68
	mov	r9, #30
	mov	r8, #48
	ldr	r3, .L967+164
	str	r9, [r3, #12]
	str	r1, [r3, #8]
	str	r8, [r3, #104]
	str	lr, [r3, #196]
	str	ip, [r3, #284]
	str	r0, [r3, #288]
	str	r2, [r3, #100]
	str	r2, [r3, #192]
	bl	initLives
	mov	r9, #16
	bl	initSmallHealthPickups
	mov	r8, #8
	bl	initLargeHealthPickups
	mvn	lr, #15
	mov	ip, #0
	mov	r0, #2
	mov	r1, #1
	ldr	r3, .L967+168
	add	r2, r3, #276
.L946:
	str	r9, [r3, #28]
	str	r8, [r3, #24]
	str	lr, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r3, #20]
	str	r1, [r3, #52]
	add	r3, r3, #92
	cmp	r3, r2
	bne	.L946
	mov	r9, #16
	mov	r8, #8
	mvn	lr, #15
	mov	ip, #0
	mov	r0, #2
	mov	r1, #1
	ldr	r3, .L967+172
	add	r2, r3, #460
.L947:
	str	r9, [r3, #28]
	str	r8, [r3, #24]
	str	lr, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r3, #20]
	str	r1, [r3, #52]
	add	r3, r3, #92
	cmp	r3, r2
	bne	.L947
	bl	initMoleGuys
	ldr	r2, [r7]
	cmp	r2, #0
	ble	.L948
	mov	r1, #1
	mov	r0, #2
	mov	r3, #8
	mvn	lr, #7
	mov	ip, #0
	add	r7, r2, r2, lsl r1
	rsb	r2, r2, r7, lsl #3
	add	r2, r5, r2, lsl r0
.L949:
	str	r3, [r5, #28]
	str	r3, [r5, #24]
	str	lr, [r5, #8]
	str	ip, [r5, #12]
	str	r0, [r5, #20]
	str	r1, [r5, #52]
	add	r5, r5, #92
	cmp	r5, r2
	bne	.L949
.L948:
	bl	initHoriOctoEyes
	bl	initVertOctoEyes
	bl	initSniperJoes
	ldr	r2, [r6]
	cmp	r2, #0
	ble	.L950
	mov	r1, #1
	mov	r0, #2
	mov	r3, #8
	mvn	lr, #7
	mov	ip, #0
	add	r5, r2, r2, lsl r1
	rsb	r2, r2, r5, lsl #3
	add	r2, r4, r2, lsl r0
.L951:
	str	r3, [r4, #28]
	str	r3, [r4, #24]
	str	lr, [r4, #8]
	str	ip, [r4, #12]
	str	r0, [r4, #20]
	str	r1, [r4, #52]
	add	r4, r4, #92
	cmp	r2, r4
	bne	.L951
.L950:
	mov	r2, #1
	mov	r0, #8
	mov	r1, #32
	ldr	r3, .L967+176
	str	r2, [r3, #52]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r0, [r3, #24]
	str	r1, [r3, #28]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L936:
	cmp	r2, #1
	bne	.L964
	mov	r3, #0
	mov	r8, #20
	mov	lr, #60
	mov	ip, #90
	mov	r1, #10
	mov	r0, #2
	ldr	r6, .L967+100
	ldr	r7, .L967+104
	str	r3, [r6]
	str	r3, [r7]
	ldr	r6, .L967+108
	ldr	r7, .L967+112
	str	r3, [r6]
	str	r3, [r7]
	ldr	r6, .L967+116
	ldr	r7, .L967+128
	str	r3, [r6]
	str	r3, [r7]
	ldr	r6, .L967+136
	ldr	r7, .L967+68
	str	r3, [r6]
	str	r3, [r7]
	ldr	r6, .L967+132
	ldr	r7, .L967+140
	str	r3, [r6]
	str	r3, [r7]
	ldr	r3, .L967+44
	str	r8, [r3]
	ldr	r3, .L967+52
	str	lr, [r3]
	ldr	r3, .L967+56
	str	ip, [r3]
	ldr	r3, .L967+60
	str	r1, [r3]
	ldr	r3, .L967+64
	str	r1, [r3]
	ldr	r3, .L967+144
	str	r1, [r3]
	ldr	r3, .L967+72
	ldr	r1, .L967+84
	str	r0, [r3]
	ldr	r0, .L967+180
	ldr	r3, .L967+92
	str	r0, [r1]
	ldr	r0, .L967+184
	ldr	r1, .L967+124
	str	r0, [r3]
	ldr	r3, .L967+120
	str	r2, [r1]
	str	r2, [r3]
	b	.L937
.L964:
	cmp	r2, #2
	bne	.L965
	mov	r2, #0
	mov	r0, #20
	mov	r8, #60
	mov	lr, #90
	mov	r1, #10
	ldr	r6, .L967+76
	str	r2, [r6]
	ldr	r6, .L967+80
	mov	ip, #3
	str	r2, [r6]
	ldr	r6, .L967+100
	str	r2, [r6]
	ldr	r6, .L967+104
	str	r2, [r6]
	ldr	r6, .L967+108
	str	r2, [r6]
	ldr	r6, .L967+112
	str	r2, [r6]
	ldr	r6, .L967+116
	str	r2, [r6]
	ldr	r6, .L967+128
	str	r2, [r6]
	ldr	r6, .L967+68
	str	r2, [r6]
	ldr	r6, .L967+144
	str	r2, [r6]
	ldr	r6, .L967+132
	str	r2, [r6]
	ldr	r2, .L967+44
	str	r0, [r2]
	ldr	r2, .L967+52
	str	r8, [r2]
	ldr	r2, .L967+56
	str	lr, [r2]
	ldr	r2, .L967+60
	str	r1, [r2]
	ldr	r2, .L967+64
	ldr	r7, .L967+140
	str	r1, [r2]
	ldr	r2, .L967+136
	str	r0, [r7]
	str	r1, [r2]
	ldr	r0, .L967+188
	ldr	r2, .L967+72
	ldr	r1, .L967+84
	str	ip, [r2]
	str	r0, [r1]
	ldr	r2, .L967+92
	ldr	r0, .L967+192
.L963:
	str	r0, [r2]
	ldr	r1, .L967+124
	ldr	r2, .L967+120
	str	r3, [r1]
	str	r3, [r2]
	b	.L937
.L965:
	cmp	r2, #3
	bne	.L966
	mov	r2, #0
	mov	r0, #20
	mov	r9, #60
	mov	r8, #90
	mov	lr, #10
	mov	r1, #9
	ldr	r6, .L967+76
	mov	ip, #2
	str	r2, [r6]
	ldr	r6, .L967+80
	str	r2, [r6]
	ldr	r6, .L967+100
	str	r2, [r6]
	ldr	r6, .L967+104
	str	r2, [r6]
	ldr	r6, .L967+108
	str	r2, [r6]
	ldr	r6, .L967+112
	str	r2, [r6]
	ldr	r6, .L967+116
	str	r2, [r6]
	ldr	r6, .L967+136
	str	r2, [r6]
	ldr	r6, .L967+68
	ldr	r7, .L967+140
	str	r2, [r6]
	ldr	r6, .L967+144
	str	r2, [r7]
	str	r2, [r6]
	ldr	r2, .L967+44
	str	r0, [r2]
	ldr	r2, .L967+52
	str	r9, [r2]
	ldr	r2, .L967+56
	str	r8, [r2]
	ldr	r2, .L967+60
	str	lr, [r2]
	ldr	r2, .L967+64
	ldr	r6, .L967+132
	str	r1, [r2]
	ldr	r2, .L967+128
	str	r0, [r6]
	str	r1, [r2]
	ldr	r0, .L967+196
	ldr	r2, .L967+72
	ldr	r1, .L967+84
	str	ip, [r2]
	str	r0, [r1]
	ldr	r2, .L967+92
	ldr	r0, .L967+200
	b	.L963
.L966:
	cmp	r2, #4
	ldrne	r6, .L967+132
	ldrne	r7, .L967+140
	bne	.L937
	mov	r1, #0
	mov	r10, #20
	mov	r9, #60
	mov	r8, #90
	mov	r7, #10
	mov	r6, #19
	mov	lr, #2
	mov	ip, #6
	ldr	fp, .L967+76
	str	r1, [fp]
	ldr	fp, .L967+80
	str	r1, [fp]
	ldr	fp, .L967+100
	str	r1, [fp]
	ldr	fp, .L967+104
	str	r1, [fp]
	ldr	fp, .L967+108
	str	r1, [fp]
	ldr	fp, .L967+112
	str	r1, [fp]
	ldr	fp, .L967+116
	str	r1, [fp]
	ldr	r1, .L967+44
	str	r10, [r1]
	ldr	r1, .L967+52
	str	r9, [r1]
	ldr	r1, .L967+56
	str	r8, [r1]
	ldr	r1, .L967+60
	str	r7, [r1]
	ldr	r1, .L967+64
	str	r6, [r1]
	ldr	r1, .L967+120
	str	lr, [r1]
	ldr	r1, .L967+68
	mov	r0, #12
	str	ip, [r1]
	mov	ip, #5
	ldr	r1, .L967+144
	ldr	r6, .L967+132
	ldr	r7, .L967+140
	str	ip, [r1]
	str	r0, [r6]
	str	r0, [r7]
	ldr	ip, .L967+204
	ldr	r0, .L967+84
	ldr	r1, .L967+92
	str	ip, [r0]
	ldr	r0, .L967+208
	ldr	ip, .L967+124
	str	r0, [r1]
	str	r3, [ip]
	ldr	r0, .L967+72
	ldr	r1, .L967+128
	ldr	r3, .L967+136
	str	r2, [r0]
	str	r2, [r1]
	str	r2, [r3]
	b	.L937
.L968:
	.align	2
.L967:
	.word	readyFrameOverride
	.word	winSoundCheck
	.word	winTimer
	.word	winCheck
	.word	sniperJoes+52
	.word	moleGuys+52
	.word	vertOctoEyes+52
	.word	horiOctoEyes+52
	.word	joeBullets
	.word	moleBullets
	.word	levelsCleared
	.word	playerHealth
	.word	playerLives
	.word	toggleTimer
	.word	iFramesTimer
	.word	jumpAniCooldown
	.word	enemyCount
	.word	horiOctoEyeCount
	.word	smallPickupsCount
	.word	vOff
	.word	hOff
	.word	collisionMap
	.word	levelOneCollisionBitmap
	.word	ladderCollision
	.word	laddercollisionBitmap
	.word	cheatTimerCheck
	.word	cheatTimer
	.word	reverseSpriteCheck
	.word	ladderSpriteCheck
	.word	wasAirSlash
	.word	largePickupsCount
	.word	livesCount
	.word	sniperJoeCount
	.word	joeBulletCount
	.word	moleGuyCount
	.word	moleBulletCount
	.word	vertOctoEyeCount
	.word	readyTimer
	.word	ready
	.word	hurt
	.word	health
	.word	text
	.word	playerBullets
	.word	protoBullets
	.word	protoShield
	.word	levelTwoCollisionBitmap
	.word	levelTwoLadderCollisionBitmap
	.word	levelThreeCollisionBitmap
	.word	levelThreeLadderCollisionBitmap
	.word	levelFourCollisionBitmap
	.word	levelFourLadderCollisionBitmap
	.word	levelFiveCollisionBitmap
	.word	levelFiveLadderCollisionBitmap
	.size	initGame, .-initGame
	.align	2
	.global	updateVertOctoEye
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateVertOctoEye, %function
updateVertOctoEye:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	cmp	r3, #0
	bxne	lr
	b	updateVertOctoEye.part.0
	.size	updateVertOctoEye, .-updateVertOctoEye
	.align	2
	.global	animateVertEyes
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateVertEyes, %function
animateVertEyes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L983
	ldr	ip, [r3]
	cmp	ip, #0
	bxle	lr
	push	{r4, r5, lr}
	mov	r5, #1
	mov	lr, #2
	ldr	r3, .L983+4
	add	r2, ip, ip, lsl r5
	rsb	ip, ip, r2, lsl #3
	ldr	r4, .L983+8
	add	ip, r3, ip, lsl lr
.L976:
	ldr	r2, [r3, #32]
	smull	r1, r0, r4, r2
	asr	r1, r2, #31
	rsb	r1, r1, r0, asr #2
	add	r1, r1, r1, lsl #2
	cmp	r2, r1, lsl #1
	str	lr, [r3, #36]
	bne	.L973
	ldr	r1, [r3, #80]
	cmp	r1, #0
	beq	.L982
	ldr	r1, [r3, #76]
	cmp	r1, #19
	movgt	r1, lr
	movle	r1, r5
.L982:
	str	r1, [r3, #44]
.L973:
	add	r2, r2, #1
	str	r2, [r3, #32]
	add	r3, r3, #92
	cmp	r3, ip
	bne	.L976
	pop	{r4, r5, lr}
	bx	lr
.L984:
	.align	2
.L983:
	.word	vertOctoEyeCount
	.word	vertOctoEyes
	.word	1717986919
	.size	animateVertEyes, .-animateVertEyes
	.align	2
	.global	drawVertOctoEyes
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawVertOctoEyes, %function
drawVertOctoEyes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L994
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, [r3]
	cmp	r4, #0
	ble	.L985
	ldr	r9, .L994+4
	ldr	r0, .L994+8
	ldr	r1, .L994+12
	ldr	r8, [r9]
	ldr	r2, .L994+16
	ldr	r3, .L994+20
	add	lr, r4, r4, lsl #1
	rsb	lr, r4, lr, lsl #3
	ldrh	r7, [r0]
	ldrh	r6, [r1]
	ldr	r5, .L994+24
	add	r2, r2, r8, lsl #3
	add	lr, r3, lr, lsl #2
	b	.L989
.L993:
	ldrh	r1, [r2]
	add	r3, r3, #92
	orr	r1, r1, #512
	cmp	r3, lr
	strh	r1, [r2]	@ movhi
	add	r2, r2, #8
	beq	.L992
.L989:
	ldr	r1, [r3, #52]
	cmp	r1, #0
	bne	.L993
	ldr	r1, [r3, #12]
	ldr	ip, [r3, #8]
	ldr	r10, [r3, #44]
	ldr	r0, [r3, #36]
	sub	r1, r1, r6
	and	r1, r1, r5
	sub	ip, ip, r7
	add	r10, r10, #12
	add	r3, r3, #92
	orr	r1, r1, #16384
	and	ip, ip, #255
	add	r0, r0, r10, lsl #6
	cmp	r3, lr
	strh	r1, [r2, #2]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	add	r2, r2, #8
	bne	.L989
.L992:
	add	r4, r8, r4
	str	r4, [r9]
.L985:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L995:
	.align	2
.L994:
	.word	vertOctoEyeCount
	.word	shadowOAMIndex
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	vertOctoEyes
	.word	511
	.size	drawVertOctoEyes, .-drawVertOctoEyes
	.align	2
	.global	initReady
	.syntax unified
	.arm
	.fpu softvfp
	.type	initReady, %function
initReady:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #140
	mov	r2, #100
	mov	lr, #80
	mov	ip, #2
	mov	r0, #12
	mov	r1, #0
	ldr	r3, .L1000
	str	r4, [r3]
	ldr	r3, .L1000+4
.L997:
	str	r2, [r3, #12]
	add	r2, r2, #10
	cmp	r2, #150
	str	lr, [r3, #8]
	str	ip, [r3, #48]
	str	r0, [r3, #32]
	str	r1, [r3, #52]
	add	r3, r3, #92
	bne	.L997
	pop	{r4, lr}
	bx	lr
.L1001:
	.align	2
.L1000:
	.word	readyTimer
	.word	ready
	.size	initReady, .-initReady
	.align	2
	.global	updateReady
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateReady, %function
updateReady:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, #1
	ldr	r5, .L1009
	ldr	r1, .L1009+4
	ldr	ip, [r5]
	ldr	r4, .L1009+8
	add	lr, r1, #460
.L1006:
	ldr	r2, [r1, #32]
	smull	r3, r0, r4, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #1
	bne	.L1003
	cmp	ip, #0
	strlt	r6, [r1, #52]
	blt	.L1003
	add	r0, r1, #44
	ldm	r0, {r0, r7}
	sub	r7, r7, #1
	cmp	r0, r7
	add	r0, r0, #1
	strlt	r0, [r1, #44]
	strge	r3, [r1, #44]
.L1003:
	add	r2, r2, #1
	str	r2, [r1, #32]
	add	r1, r1, #92
	cmp	r1, lr
	bne	.L1006
	sub	ip, ip, #1
	str	ip, [r5]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L1010:
	.align	2
.L1009:
	.word	readyTimer
	.word	ready
	.word	1717986919
	.size	updateReady, .-updateReady
	.align	2
	.global	drawReady
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawReady, %function
drawReady:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, r5, r6, lr}
	ldr	r5, .L1017
	ldr	r3, .L1017+4
	ldr	lr, [r5]
	ldr	r2, .L1017+8
	ldr	r4, .L1017+12
	add	r3, r3, lr, lsl #3
.L1014:
	ldr	r0, [r2, #52]
	cmp	r0, #0
	beq	.L1012
	ldrh	r0, [r3]
	orr	r0, r0, #512
	strh	r0, [r3]	@ movhi
.L1013:
	add	r1, r1, #1
	cmp	r1, #5
	add	r2, r2, #92
	add	r3, r3, #8
	bne	.L1014
	add	lr, lr, #5
	str	lr, [r5]
	pop	{r4, r5, r6, lr}
	bx	lr
.L1012:
	ldr	r0, [r2, #44]
	ldr	ip, [r2, #12]
	ldrb	r6, [r2, #8]	@ zero_extendqisi2
	add	r0, r1, r0, lsl #5
	add	r0, r0, #276
	and	ip, ip, r4
	strh	r0, [r3, #4]	@ movhi
	strh	ip, [r3, #2]	@ movhi
	strh	r6, [r3]	@ movhi
	b	.L1013
.L1018:
	.align	2
.L1017:
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	ready
	.word	511
	.size	drawReady, .-drawReady
	.align	2
	.global	initProtoBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initProtoBullets, %function
initProtoBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	ip, #0
	mov	r5, #16
	mov	r4, #8
	mvn	lr, #15
	mov	r0, #2
	mov	r1, #1
	ldr	r3, .L1023
	add	r2, r3, #460
.L1020:
	str	r5, [r3, #28]
	str	r4, [r3, #24]
	str	lr, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r3, #20]
	str	r1, [r3, #52]
	add	r3, r3, #92
	cmp	r3, r2
	bne	.L1020
	pop	{r4, r5, lr}
	bx	lr
.L1024:
	.align	2
.L1023:
	.word	protoBullets
	.size	initProtoBullets, .-initProtoBullets
	.align	2
	.global	fireProtoBulletLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireProtoBulletLeft, %function
fireProtoBulletLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L1036
	mov	r2, r0
	ldr	r1, [r2, #52]
	cmp	r1, #1
	mov	r3, #0
	beq	.L1035
.L1026:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #92
	bxeq	lr
	ldr	r1, [r2, #52]
	cmp	r1, #1
	bne	.L1026
.L1035:
	push	{r4, lr}
	mov	lr, #2
	mov	r4, #0
	ldr	ip, .L1036+4
	ldr	r1, [ip, #20]
	ldr	r2, [ip]
	add	r1, r1, r1, lsr #31
	add	r2, r2, r1, asr #1
	ldr	ip, [ip, #4]
	add	r1, r3, r3, lsl #1
	rsb	r3, r3, r1, lsl #3
	add	r3, r0, r3, lsl lr
	sub	r2, r2, #5
	sub	r1, ip, #22
	str	r4, [r3, #52]
	str	lr, [r3, #60]
	str	r2, [r3, #8]
	str	r1, [r3, #12]
	pop	{r4, lr}
	bx	lr
.L1037:
	.align	2
.L1036:
	.word	protoBullets
	.word	player
	.size	fireProtoBulletLeft, .-fireProtoBulletLeft
	.align	2
	.global	fireProtoBulletRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireProtoBulletRight, %function
fireProtoBulletRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L1049
	mov	r2, r0
	ldr	r1, [r2, #52]
	cmp	r1, #1
	mov	r3, #0
	beq	.L1048
.L1039:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #92
	bxeq	lr
	ldr	r1, [r2, #52]
	cmp	r1, #1
	bne	.L1039
.L1048:
	push	{r4, lr}
	mov	r4, #0
	ldr	lr, .L1049+4
	ldr	r2, [lr, #20]
	ldr	ip, [lr]
	add	r2, r2, r2, lsr #31
	add	ip, ip, r2, asr #1
	add	r2, r3, r3, lsl #1
	rsb	r3, r3, r2, lsl #3
	ldr	r2, [lr, #4]
	ldr	lr, [lr, #16]
	add	r2, r2, lr
	add	r3, r0, r3, lsl #2
	sub	ip, ip, #5
	add	r2, r2, #8
	str	r4, [r3, #52]
	str	ip, [r3, #8]
	str	r1, [r3, #60]
	str	r2, [r3, #12]
	pop	{r4, lr}
	bx	lr
.L1050:
	.align	2
.L1049:
	.word	protoBullets
	.word	player
	.size	fireProtoBulletRight, .-fireProtoBulletRight
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_d2iz
	.global	__aeabi_dsub
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L1498+16
	ldr	r5, [r4, #44]
	cmp	r5, #0
	sub	sp, sp, #52
	bne	.L1052
	ldr	r3, .L1498+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L1052
	ldr	fp, [r4, #48]
	ldr	r3, [r4, #60]
	cmp	fp, #0
	str	r3, [sp, #28]
	bne	.L1055
	cmp	r3, #0
	bne	.L1056
	ldr	r6, .L1498+24
	ldr	r0, [r4, #88]
	mov	lr, pc
	bx	r6
	mov	r8, r0
	mov	r9, r1
	adr	r3, .L1498
	ldmia	r3, {r2-r3}
	str	r8, [sp, #32]
	str	r9, [sp, #36]
	ldr	r7, .L1498+28
	mov	lr, pc
	bx	r7
	ldr	r9, .L1498+32
	mov	lr, pc
	bx	r9
	ldr	fp, [r4]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #8]
	add	r3, fp, r3
	add	r3, r3, r2
	sub	r3, r3, #1
	str	r3, [sp, #16]
	ldr	r8, .L1498+36
	mov	lr, pc
	bx	r8
	ldr	r10, .L1498+40
	ldr	r3, [sp, #16]
	ldr	r2, [r10]
	ldr	r1, [r4, #4]
	sub	r3, r3, r0
	add	r3, r2, r3, lsl #9
	ldrb	r2, [r3, r1]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, r1
	beq	.L1057
	ldr	r2, [r4, #16]
	add	r1, r3, r2
	ldrb	r1, [r1, #-10]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L1057
	add	r2, r2, r2, lsr #31
	ldrb	r3, [r3, r2, asr #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1057
	ldr	ip, .L1498+44
	adr	r3, .L1498+8
	ldmia	r3, {r2-r3}
	add	r1, sp, #32
	ldmia	r1, {r0-r1}
	mov	lr, pc
	bx	ip
	mov	lr, pc
	bx	r8
	mov	r2, #1
	ldr	r3, .L1498+108
	str	r0, [r4, #88]
	str	r2, [r3]
	mov	lr, pc
	bx	r6
	adr	r3, .L1498
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r9
	mov	r2, r0
	mov	r3, r1
	mov	r0, fp
	str	r2, [sp, #16]
	str	r3, [sp, #20]
	mov	lr, pc
	bx	r6
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	ldr	ip, .L1498+44
	mov	lr, pc
	bx	ip
	mov	lr, pc
	bx	r8
	str	r0, [r4]
	b	.L1058
.L1052:
	ldr	r3, [r4, #84]
	ldr	fp, .L1498+48
	ldr	r7, .L1498+52
.L1054:
	ldr	r0, [fp]
	ldr	r1, [r7]
	ldr	r2, [r4, #76]
	add	r3, r3, #1
	add	r0, r0, #1
	add	r1, r1, #1
	add	r2, r2, #1
	str	r3, [r4, #84]
	str	r0, [fp]
	str	r1, [r7]
	str	r2, [r4, #76]
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateGamePlayer
.L1055:
	ldr	r2, [sp, #28]
	ldr	r3, .L1498+108
	cmp	r2, #0
	str	r5, [r3]
	bne	.L1060
	ldr	r6, .L1498+24
	ldr	r0, [r4, #88]
	mov	lr, pc
	bx	r6
	mov	r8, r0
	mov	r9, r1
	adr	r3, .L1498
	ldmia	r3, {r2-r3}
	str	r8, [sp, #40]
	str	r9, [sp, #44]
	ldr	r7, .L1498+28
	mov	lr, pc
	bx	r7
	ldr	r9, .L1498+32
	mov	lr, pc
	bx	r9
	ldr	r3, [r4]
	mov	ip, r3
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #8]
	add	r3, ip, r3
	add	r3, r3, r2
	add	r3, r3, #7
	str	r3, [sp, #16]
	str	ip, [sp, #32]
	ldr	r8, .L1498+36
	mov	lr, pc
	bx	r8
	ldr	r10, .L1498+40
	ldr	r3, [sp, #16]
	ldr	r2, [r10]
	ldr	r1, [r4, #4]
	sub	r3, r3, r0
	add	r3, r2, r3, lsl #9
	ldrb	r2, [r3, r1]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, r1
	bne	.L1475
.L1059:
	mov	r3, #0
	str	r3, [r4, #88]
.L1060:
	mov	r3, #1
	str	r3, [sp, #28]
.L1062:
	ldr	r3, [r4, #64]
	cmp	r3, #0
	beq	.L1063
	ldr	r3, [r4, #56]
	cmp	r3, #1
	beq	.L1476
	cmp	r3, #2
	bne	.L1466
	ldr	r9, .L1498+56
	ldr	r8, [r4, #4]
	ldr	r7, [r9]
	ldr	r6, [r4, #16]
	sub	r3, r8, r7
	add	r3, r3, r6
	cmp	r3, #239
	bgt	.L1466
	ldr	r2, .L1498+40
	ldr	r3, .L1498+24
	ldr	r0, [r4, #88]
	ldr	r10, [r2]
	ldr	fp, .L1498+28
	mov	lr, pc
	bx	r3
	adr	r3, .L1498
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	fp
	ldr	r3, .L1498+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L1498+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #12]
	ldr	r2, [r4]
	add	r8, r8, r3
	sub	r1, r2, r0
	add	r3, r6, r8
	add	r1, r10, r1, lsl #9
	sub	r3, r3, #1
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L1466
	ldr	ip, [r4, #20]
	add	r1, r2, ip
	sub	r1, r1, #1
	sub	r1, r1, r0
	add	r1, r10, r1, lsl #9
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L1466
	add	ip, ip, ip, lsr #31
	add	r2, r2, ip, asr #1
	sub	r2, r2, #1
	sub	r0, r2, r0
	add	r0, r10, r0, lsl #9
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1466
	cmp	r7, #272
	str	r8, [r4, #4]
	bge	.L1466
	sub	r8, r8, r7
	cmp	r8, #119
	addgt	r7, r7, #1
	strgt	r7, [r9]
.L1466:
	ldr	r3, .L1498+60
	str	r3, [sp, #16]
.L1196:
	ldr	r3, [r4, #68]
	cmp	r3, #0
	movle	r2, #0
	ldr	r6, .L1498+64
	sub	r3, r3, #1
	ldrgt	r5, [r4, #64]
	strle	r2, [r4, #64]
	str	r3, [r4, #68]
	ldr	r9, .L1498+84
	ldr	fp, .L1498+68
	ldr	r10, .L1498+72
	add	r8, r6, #920
	b	.L1114
.L1499:
	.align	3
.L1498:
	.word	2576980378
	.word	1069128089
	.word	2576980378
	.word	1074370969
	.word	player
	.word	deathCheck
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	round
	.word	__aeabi_d2iz
	.word	collisionMap
	.word	__aeabi_dsub
	.word	toggleTimer
	.word	iFramesTimer
	.word	hOff
	.word	oldButtons
	.word	lives+8
	.word	lifeSound_data
	.word	playerLives
	.word	smallHealthPickup+8
	.word	largeHealthPickup+8
	.word	collision
	.word	healthPickup_data
	.word	playerHealth
	.word	health
	.word	healthPickup_length
	.word	playSoundB
	.word	isFalling
.L1111:
	add	r6, r6, #92
	cmp	r8, r6
	beq	.L1477
.L1114:
	ldr	r2, [r6, #44]
	orrs	r7, r5, r2
	bne	.L1111
	add	r1, r6, #16
	ldm	r6, {r2, r3}
	ldm	r1, {r1, ip}
	ldr	r0, [r4, #4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	sub	r0, r0, #8
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L1112
.L1467:
	add	r6, r6, #92
	cmp	r8, r6
	ldr	r5, [r4, #64]
	bne	.L1114
.L1477:
	ldr	r6, .L1498+76
	ldr	r9, .L1498+84
	ldr	r10, .L1498+92
	ldr	fp, .L1498+88
	add	r8, r6, #920
	b	.L1121
.L1115:
	add	r6, r6, #92
	cmp	r6, r8
	beq	.L1478
.L1121:
	ldr	r3, [r6, #44]
	orrs	r7, r5, r3
	bne	.L1115
	add	r1, r6, #16
	ldm	r6, {r2, r3}
	ldm	r1, {r1, ip}
	ldr	r0, [r4, #4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	sub	r0, r0, #4
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L1116
.L1468:
	add	r6, r6, #92
	cmp	r6, r8
	ldr	r5, [r4, #64]
	bne	.L1121
.L1478:
	ldr	r6, .L1498+80
	ldr	r8, .L1498+84
	ldr	r10, .L1498+92
	ldr	r9, .L1498+96
	ldr	fp, .L1498+88
	add	r7, r6, #920
	b	.L1133
.L1126:
	add	r6, r6, #92
	cmp	r7, r6
	beq	.L1132
	ldr	r5, [r4, #64]
.L1133:
	ldr	r3, [r6, #44]
	orrs	r3, r5, r3
	bne	.L1126
	add	r1, r6, #16
	ldm	r6, {r2, r3}
	ldm	r1, {r1, ip}
	ldr	r0, [r4, #4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	sub	r0, r0, #4
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L1126
	ldr	r3, [r10]
	add	r3, r3, #8
	cmp	r3, #20
	mov	r2, #1
	movgt	r3, #20
	str	r2, [r6, #44]
	str	r3, [r10]
	ldr	r5, [r9, #236]
	mov	r3, #9
	ldr	lr, [r9, #144]
	ldr	ip, [r9, #52]
	ldr	r2, .L1498+96
	b	.L1131
.L1125:
	cmp	r3, #1
	beq	.L1479
	cmp	r3, #2
	beq	.L1480
	sub	r1, r3, #1
	ble	.L1130
	ldr	r0, [r2, #880]
	cmp	r0, #1
	beq	.L1481
.L1128:
	mov	r3, r1
	sub	r2, r2, #92
.L1131:
	cmp	r3, #0
	bne	.L1125
	cmp	ip, #1
	bne	.L1126
	ldr	r1, .L1498+100
	mov	r2, r3
	mov	r0, fp
	ldr	r1, [r1]
	ldr	r5, .L1498+104
	str	r3, [r9, #52]
	mov	lr, pc
	bx	r5
	b	.L1126
.L1057:
	mov	r3, #0
	ldr	r2, .L1498+108
	str	r3, [r4, #88]
	str	r3, [r2]
	mov	r3, #1
	str	r3, [sp, #28]
.L1058:
	ldr	fp, [r4]
	cmp	fp, #0
	ble	.L1061
	ldr	r0, [r4, #88]
	mov	lr, pc
	bx	r6
	adr	r3, .L1500
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r8
	ldr	r3, [r10]
	ldr	r1, [r4, #4]
	sub	r2, fp, r0
	add	r3, r3, r2, lsl #9
	ldrb	r2, [r3, r1]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, r1
	beq	.L1061
	ldr	r2, [r4, #16]
	add	r3, r3, r2
	ldrb	r3, [r3, #-24]	@ zero_extendqisi2
	cmp	r3, #0
	movne	fp, #0
	bne	.L1062
.L1061:
	mov	r3, #0
	add	fp, fp, #1
	str	fp, [r4]
	str	r3, [r4, #88]
	mov	fp, r3
	b	.L1062
.L1132:
	ldr	r3, [sp, #16]
	ldr	r5, .L1500+8
	ldrh	r1, [r3]
	ldr	r7, .L1500+80
	ldr	r8, .L1500+12
	ldr	r9, .L1500+16
	add	r6, r5, #276
.L1137:
	ldr	r3, [r5, #52]
	cmp	r3, #1
	beq	.L1482
.L1134:
	add	r5, r5, #92
	cmp	r5, r6
	bne	.L1137
	tst	r1, #512
	beq	.L1138
	ldr	r3, .L1500+80
	ldrh	r3, [r3]
	tst	r3, #512
	bne	.L1138
.L1139:
	ldr	fp, .L1500+84
	ldr	r3, [fp]
	cmp	r3, #59
	ble	.L1140
	ldr	r3, [r4, #76]
	cmp	r3, #44
	bgt	.L1483
.L1140:
	tst	r1, #2
	beq	.L1142
	ldr	r3, .L1500+80
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L1142
	ldr	ip, [r4, #72]
	cmp	ip, #2
	beq	.L1484
.L1142:
	ldr	r3, [r4, #80]
	cmp	r3, #2
	beq	.L1485
	cmp	r3, #1
	bne	.L1195
	ldr	r3, [r4, #76]
	cmp	r3, #29
	bgt	.L1149
	ldr	r3, [r4, #64]
	cmp	r3, #1
	beq	.L1149
	ldr	r3, [r4, #60]
	cmp	r3, #1
	bne	.L1195
.L1149:
	mov	r3, #0
	str	r3, [r4, #80]
.L1195:
	ldr	r5, .L1500+20
	ldr	r7, .L1500+24
	ldr	r9, .L1500+52
	ldr	r10, .L1500+56
	add	r8, r5, #920
	b	.L1155
.L1151:
	add	r5, r5, #92
	cmp	r8, r5
	beq	.L1486
.L1155:
	ldr	r6, [r5, #44]
	cmp	r6, #0
	bne	.L1151
	ldr	r3, [r7]
	cmp	r3, #89
	ble	.L1151
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L1151
	mov	r0, #24
	mov	ip, #1
	ldr	r3, [r10]
	sub	r3, r3, #4
	str	r3, [r10]
	ldr	r3, .L1500+60
	str	r0, [r4, #20]
	ldr	r1, [r3]
	mov	r2, r6
	ldr	r3, .L1500+92
	ldr	r0, .L1500+64
	str	r6, [r4, #48]
	str	ip, [r4, #64]
	mov	lr, pc
	bx	r3
	mov	r3, #20
	str	r6, [r7]
	str	r3, [r4, #68]
	ldr	r3, .L1500+68
	b	.L1154
.L1153:
	cmp	r6, #10
	add	r3, r3, #92
	beq	.L1151
.L1154:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	mov	r2, r6
	add	r6, r6, #1
	bne	.L1153
	mov	r1, #1
	add	r3, r2, r2, lsl r1
	ldr	r0, .L1500+68
	rsb	r2, r2, r3, lsl #3
	add	r3, r6, r6, lsl r1
	rsb	r3, r6, r3, lsl #3
	add	r2, r0, r2, lsl #2
	add	r3, r0, r3, lsl #2
	str	r1, [r2, #52]
	str	r1, [r3, #52]
	b	.L1151
.L1482:
	tst	r1, #2
	beq	.L1134
	ldrh	r3, [r7]
	tst	r3, #2
	bne	.L1134
	add	r2, r4, #60
	ldm	r2, {r2, r10}
	ldr	r3, [r4, #48]
	orr	r3, r3, r2
	orrs	r10, r3, r10
	bne	.L1134
	ldr	r3, [r4, #84]
	cmp	r3, #9
	ble	.L1134
	ldr	r3, [r4, #72]
	cmp	r3, #1
	bne	.L1134
	ldr	r3, [r4, #56]
	cmp	r3, #1
	beq	.L1487
	cmp	r3, #2
	beq	.L1488
.L1136:
	mov	r3, #0
	str	r3, [r4, #84]
	b	.L1134
.L1486:
	ldr	r5, .L1500+28
	ldr	r9, .L1500+52
	ldr	r10, .L1500+56
	add	r8, r5, #1840
	b	.L1161
.L1157:
	add	r5, r5, #92
	cmp	r5, r8
	beq	.L1489
.L1161:
	ldr	r6, [r5, #44]
	cmp	r6, #0
	bne	.L1157
	ldr	r3, [r7]
	cmp	r3, #89
	ble	.L1157
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L1157
	mov	r3, #1
	ldr	r1, .L1500+60
	mov	r2, r6
	ldr	r1, [r1]
	ldr	r0, .L1500+64
	str	r3, [r4, #64]
	ldr	r3, .L1500+92
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r0, #24
	mov	r1, #20
	ldr	r2, [r10]
	sub	r2, r2, #2
	str	r3, [r5, #44]
	str	r6, [r4, #48]
	str	r6, [r7]
	str	r2, [r10]
	str	r0, [r4, #20]
	str	r1, [r4, #68]
	ldr	r3, .L1500+68
	b	.L1160
.L1159:
	add	r6, r6, #1
	cmp	r6, #10
	add	r3, r3, #92
	beq	.L1157
.L1160:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	bne	.L1159
	mov	r2, #1
	ldr	r1, .L1500+68
	add	r3, r6, r6, lsl r2
	rsb	r3, r6, r3, lsl #3
	add	r3, r1, r3, lsl #2
	str	r2, [r3, #52]
	b	.L1157
.L1489:
	ldr	r5, .L1500+32
	ldr	r9, .L1500+52
	ldr	r10, .L1500+56
	add	r8, r5, #920
	b	.L1167
.L1501:
	.align	3
.L1500:
	.word	2576980378
	.word	1069128089
	.word	playerBullets
	.word	busterSound_length
	.word	busterSound_data
	.word	moleGuys+8
	.word	iFramesTimer
	.word	moleBullets+8
	.word	sniperJoes+8
	.word	joeBullets+8
	.word	moleBullets+52
	.word	horiOctoEyes+8
	.word	vertOctoEyes+8
	.word	collision
	.word	playerHealth
	.word	hurtSound_length
	.word	hurtSound_data
	.word	health
	.word	protoShield
	.word	protoBullets
	.word	buttons
	.word	toggleTimer
	.word	lifeSound_length
	.word	playSoundB
	.word	oldButtons
	.word	67109120
	.word	hOff
	.word	collisionMap
	.word	__aeabi_i2d
.L1163:
	add	r5, r5, #92
	cmp	r8, r5
	beq	.L1490
.L1167:
	ldr	r6, [r5, #44]
	cmp	r6, #0
	bne	.L1163
	ldr	r3, [r7]
	cmp	r3, #89
	ble	.L1163
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L1163
	mov	r0, #24
	mov	ip, #1
	ldr	r3, [r10]
	sub	r3, r3, #4
	str	r3, [r10]
	ldr	r3, .L1500+60
	str	r0, [r4, #20]
	ldr	r1, [r3]
	mov	r2, r6
	ldr	r3, .L1500+92
	ldr	r0, .L1500+64
	str	r6, [r4, #48]
	str	ip, [r4, #64]
	mov	lr, pc
	bx	r3
	mov	r3, #20
	str	r6, [r7]
	str	r3, [r4, #68]
	ldr	r3, .L1500+68
	b	.L1166
.L1165:
	cmp	r6, #10
	add	r3, r3, #92
	beq	.L1163
.L1166:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	mov	r2, r6
	add	r6, r6, #1
	bne	.L1165
	mov	r1, #1
	add	r3, r2, r2, lsl r1
	ldr	r0, .L1500+68
	rsb	r2, r2, r3, lsl #3
	add	r3, r6, r6, lsl r1
	rsb	r3, r6, r3, lsl #3
	add	r2, r0, r2, lsl #2
	add	r3, r0, r3, lsl #2
	str	r1, [r2, #52]
	str	r1, [r3, #52]
	b	.L1163
.L1490:
	ldr	r5, .L1500+36
	ldr	r8, .L1500+40
	ldr	r10, .L1500+52
	add	r9, r5, #1840
	b	.L1173
.L1169:
	add	r5, r5, #92
	cmp	r9, r5
	add	r8, r8, #92
	beq	.L1491
.L1173:
	ldr	r6, [r5, #44]
	cmp	r6, #0
	bne	.L1169
	ldr	r3, [r7]
	cmp	r3, #89
	ble	.L1169
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L1169
	mov	r3, #1
	ldr	r1, .L1500+60
	mov	r2, r6
	ldr	r1, [r1]
	ldr	r0, .L1500+64
	str	r3, [r4, #64]
	ldr	r3, .L1500+92
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r0, #24
	mov	r1, #20
	ldr	ip, .L1500+56
	ldr	r2, [ip]
	sub	r2, r2, #2
	str	r3, [r8]
	str	r6, [r4, #48]
	str	r6, [r7]
	str	r2, [ip]
	str	r0, [r4, #20]
	str	r1, [r4, #68]
	ldr	r3, .L1500+68
	b	.L1172
.L1171:
	add	r6, r6, #1
	cmp	r6, #10
	add	r3, r3, #92
	beq	.L1169
.L1172:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	bne	.L1171
	mov	r2, #1
	ldr	r1, .L1500+68
	add	r3, r6, r6, lsl r2
	rsb	r3, r6, r3, lsl #3
	add	r3, r1, r3, lsl #2
	str	r2, [r3, #52]
	b	.L1169
.L1491:
	ldr	r5, .L1500+44
	ldr	r9, .L1500+52
	ldr	r10, .L1500+56
	add	r8, r5, #920
	b	.L1179
.L1175:
	add	r5, r5, #92
	cmp	r8, r5
	beq	.L1492
.L1179:
	ldr	r6, [r5, #44]
	cmp	r6, #0
	bne	.L1175
	ldr	r3, [r7]
	cmp	r3, #89
	ble	.L1175
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L1175
	mov	ip, #1
	ldr	r3, [r10]
	ldr	r1, .L1500+60
	sub	r3, r3, #4
	mov	r2, r6
	str	r3, [r10]
	ldr	r1, [r1]
	ldr	r3, .L1500+92
	ldr	r0, .L1500+64
	str	ip, [r4, #64]
	mov	lr, pc
	bx	r3
	mov	r3, #20
	mov	r2, #24
	str	r3, [r4, #68]
	str	r6, [r4, #48]
	str	r6, [r7]
	str	r2, [r4, #20]
	ldr	r3, .L1500+68
	b	.L1178
.L1177:
	cmp	r6, #10
	add	r3, r3, #92
	beq	.L1175
.L1178:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	mov	r2, r6
	add	r6, r6, #1
	bne	.L1177
	mov	r1, #1
	add	r3, r2, r2, lsl r1
	ldr	r0, .L1500+68
	rsb	r2, r2, r3, lsl #3
	add	r3, r6, r6, lsl r1
	rsb	r3, r6, r3, lsl #3
	add	r2, r0, r2, lsl #2
	add	r3, r0, r3, lsl #2
	str	r1, [r2, #52]
	str	r1, [r3, #52]
	b	.L1175
.L1492:
	ldr	r5, .L1500+48
	ldr	r9, .L1500+52
	ldr	r10, .L1500+56
	add	r8, r5, #920
	b	.L1185
.L1181:
	add	r5, r5, #92
	cmp	r8, r5
	beq	.L1493
.L1185:
	ldr	r6, [r5, #44]
	cmp	r6, #0
	bne	.L1181
	ldr	r3, [r7]
	cmp	r3, #89
	ble	.L1181
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L1181
	mov	ip, #1
	ldr	r3, [r10]
	ldr	r1, .L1500+60
	sub	r3, r3, #4
	mov	r2, r6
	str	r3, [r10]
	ldr	r1, [r1]
	ldr	r3, .L1500+92
	ldr	r0, .L1500+64
	str	ip, [r4, #64]
	mov	lr, pc
	bx	r3
	mov	r3, #20
	mov	r2, #24
	str	r3, [r4, #68]
	str	r6, [r4, #48]
	str	r6, [r7]
	str	r2, [r4, #20]
	ldr	r3, .L1500+68
	b	.L1184
.L1183:
	cmp	r6, #10
	add	r3, r3, #92
	beq	.L1181
.L1184:
	ldr	r2, [r3, #52]
	cmp	r2, #0
	mov	r2, r6
	add	r6, r6, #1
	bne	.L1183
	mov	r1, #1
	add	r3, r2, r2, lsl r1
	ldr	r0, .L1500+68
	rsb	r2, r2, r3, lsl #3
	add	r3, r6, r6, lsl r1
	rsb	r3, r6, r3, lsl #3
	add	r2, r0, r2, lsl #2
	add	r3, r0, r3, lsl #2
	str	r1, [r2, #52]
	str	r1, [r3, #52]
	b	.L1181
.L1493:
	ldr	r3, [r4, #72]
	subs	r3, r3, #3
	movne	r3, #1
	ldr	r2, .L1500+72
	ldr	r5, .L1500+76
	str	r3, [r2, #52]
	ldr	r2, [r5, #52]
	cmp	r2, #1
	mov	r9, #0
	ldr	r3, [r4, #84]
	ldr	r8, .L1500+80
	ldr	r10, [sp, #16]
	add	r6, r5, #460
	beq	.L1494
.L1186:
	add	r5, r5, #92
	cmp	r5, r6
	beq	.L1054
	ldr	r2, [r5, #52]
	cmp	r2, #1
	bne	.L1186
.L1494:
	ldrh	r2, [r10]
	tst	r2, #2
	beq	.L1186
	ldrh	r2, [r8]
	tst	r2, #2
	bne	.L1186
	add	r0, r4, #60
	ldm	r0, {r0, r1}
	ldr	r2, [r4, #48]
	orr	r2, r2, r0
	orrs	r2, r2, r1
	bne	.L1186
	cmp	r3, #9
	ble	.L1186
	ldr	r1, [r4, #72]
	cmp	r1, #3
	bne	.L1186
	ldr	r3, [r4, #56]
	cmp	r3, #1
	beq	.L1495
	cmp	r3, #2
	beq	.L1496
.L1188:
	mov	r3, #0
	str	r9, [r4, #84]
	b	.L1186
.L1138:
	tst	r1, #256
	beq	.L1471
	ldr	r3, .L1500+80
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L1139
.L1471:
	ldr	fp, .L1500+84
	b	.L1140
.L1479:
	cmp	lr, #1
	beq	.L1459
	mov	r1, #0
	b	.L1128
.L1480:
	cmp	r5, #1
	beq	.L1460
	mov	r1, #1
	b	.L1128
.L1112:
	ldr	r3, .L1500+88
	ldr	r1, [r3]
	mov	r3, #1
	mov	r2, r7
	str	r3, [r6, #44]
	mov	r0, fp
	ldr	r3, .L1500+92
	mov	lr, pc
	bx	r3
	ldr	r3, [r10]
	cmp	r3, #9
	addle	r3, r3, #1
	strle	r3, [r10]
	b	.L1467
.L1063:
	ldr	r7, [r4, #80]
	ldr	r3, .L1500+96
	cmp	r7, #1
	str	r3, [sp, #16]
	beq	.L1196
	ldrh	r6, [r3]
	cmp	fp, #0
	and	r6, r6, #1
	bne	.L1067
	ldr	r3, .L1500+100
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L1068
	ldr	r2, [r4, #60]
	cmp	r2, #0
	bne	.L1069
	ldr	r8, .L1500+104
	ldr	r10, [r4, #4]
	ldr	r9, [r8]
	sub	r3, r10, r9
	cmp	r3, #0
	ble	.L1072
	ldr	r2, .L1500+108
	ldr	ip, [r2]
	ldr	r3, .L1500+112
	str	ip, [sp, #32]
	ldr	r0, [r4, #88]
	mov	lr, pc
	bx	r3
	adr	r3, .L1502
	ldmia	r3, {r2-r3}
	ldr	ip, .L1502+36
	mov	lr, pc
	bx	ip
	ldr	r3, .L1502+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L1502+12
	mov	lr, pc
	bx	r3
	mov	r1, r0
	ldr	r3, [r4]
	ldr	r0, [r4, #12]
	ldr	ip, [sp, #32]
	sub	r2, r3, r1
	add	r2, ip, r2, lsl #9
	sub	r10, r10, r0
	ldrb	r2, [r2, r10]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L1072
	ldr	r0, [r4, #20]
	add	r2, r3, r0
	sub	r2, r2, #1
	sub	r2, r2, r1
	add	r2, ip, r2, lsl #9
	ldrb	r2, [r2, r10]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L1072
	add	r0, r0, r0, lsr #31
	add	r3, r3, r0, asr #1
	sub	r3, r3, #1
	sub	r3, r3, r1
	add	r3, ip, r3, lsl #9
	ldrb	r3, [r3, r10]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1072
	cmp	r7, #2
	movne	r3, #2
	strne	r3, [r4, #56]
	cmp	r9, #0
	str	r10, [r4, #4]
	ble	.L1072
	sub	r10, r10, r9
	cmp	r10, #119
	suble	r9, r9, #1
	strle	r9, [r8]
.L1072:
	ldr	r3, .L1502+16
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L1074
.L1073:
	ldr	r3, [r4, #16]
	mov	r2, r3
	ldr	r9, [r4, #4]
	ldr	r10, [r8]
	sub	r3, r9, r10
	add	r3, r3, r2
	cmp	r3, #239
	str	r2, [sp, #32]
	bgt	.L1074
	ldr	r2, .L1502+28
	ldr	lr, [r2]
	ldr	r3, .L1502+32
	str	lr, [sp, #40]
	ldr	r0, [r4, #88]
	mov	lr, pc
	bx	r3
	adr	r3, .L1502
	ldmia	r3, {r2-r3}
	ldr	ip, .L1502+36
	mov	lr, pc
	bx	ip
	ldr	r3, .L1502+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L1502+12
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #12]
	ldr	r2, [r4]
	add	r9, r9, r3
	ldr	r3, [sp, #32]
	ldr	lr, [sp, #40]
	mov	r1, r0
	add	r3, r3, r9
	sub	r0, r2, r0
	add	r0, lr, r0, lsl #9
	sub	r3, r3, #9
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L1074
	ldr	ip, [r4, #20]
	add	r0, r2, ip
	sub	r0, r0, #1
	sub	r0, r0, r1
	add	r0, lr, r0, lsl #9
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L1074
	add	ip, ip, ip, lsr #31
	add	r2, r2, ip, asr #1
	sub	r2, r2, #1
	sub	r2, r2, r1
	add	r2, lr, r2, lsl #9
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1074
	cmp	r7, #2
	movne	r3, #1
	strne	r3, [r4, #56]
	cmp	r10, #272
	str	r9, [r4, #4]
	bge	.L1074
	sub	r9, r9, r10
	cmp	r9, #119
	addgt	r3, r10, #1
	strgt	r3, [r8]
.L1074:
	cmp	r6, #0
	beq	.L1077
	ldr	r3, .L1502+20
	ldr	r2, [sp, #28]
	ldrh	r1, [r3]
	and	r2, r2, #1
	bics	r2, r2, r1
	beq	.L1078
	ldr	r2, [r4, #60]
	cmp	r2, #0
	bne	.L1079
	ldr	r1, .L1502+16
	ldrh	r0, [r1, #48]
	tst	r0, #128
	beq	.L1079
	ldr	r3, [r4]
	sub	r3, r3, #1
	ldrh	r1, [r1, #48]
	str	r3, [r4]
	ldr	r3, [r4, #88]
	tst	r1, #128
	add	r3, r3, #50
	str	r2, [r4, #92]
	str	r3, [r4, #88]
	bne	.L1081
.L1080:
	mov	r1, #30
	mov	r2, #16
	ldr	r3, [r4, #56]
	cmp	r3, #1
	str	r1, [r4, #52]
	str	r2, [r4, #20]
	streq	r3, [r4, #48]
	beq	.L1086
	cmp	r3, #2
	streq	r3, [r4, #48]
	bne	.L1084
.L1087:
	ldr	r8, .L1502+24
	ldr	r3, [r4, #4]
	ldr	r7, [r8]
	sub	r2, r3, r7
	cmp	r2, #0
	ble	.L1090
	ldr	r2, .L1502+28
	ldr	r10, [r4]
	ldr	r9, [r4, #12]
	ldr	fp, [r2]
	sub	r1, r3, r9
	add	r2, r10, #8
	add	r3, fp, r2, lsl #9
	sub	r0, r1, #1
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	mov	r2, r1
	str	r1, [sp, #32]
	str	r0, [sp, #40]
	beq	.L1090
	ldr	r3, .L1502+32
	ldr	r0, [r4, #88]
	mov	lr, pc
	bx	r3
	adr	r3, .L1502
	ldmia	r3, {r2-r3}
	ldr	ip, .L1502+36
	mov	lr, pc
	bx	ip
	ldr	r3, .L1502+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L1502+12
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #20]
	add	r2, r10, r3
	sub	r2, r2, #1
	sub	r2, r2, r0
	mov	r1, r0
	ldr	r0, [sp, #40]
	add	r2, fp, r2, lsl #9
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L1090
	add	r3, r3, r3, lsr #31
	add	r3, r10, r3, asr #1
	sub	r3, r3, #1
	ldr	r2, [sp, #32]
	sub	r3, r3, r1
	add	r3, fp, r3, lsl #9
	add	r3, r3, r2
	ldrb	r3, [r3, #-2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1090
	sub	r3, r2, r9
	cmp	r7, #0
	str	r3, [r4, #4]
	lsl	r2, r9, #1
	ble	.L1090
	sub	r3, r3, r7
	cmp	r3, #119
	suble	r7, r7, r2
	strle	r7, [r8]
.L1090:
	ldr	r3, [r4, #52]
	sub	r3, r3, #1
	str	r3, [r4, #52]
.L1091:
	cmp	r3, #0
	ble	.L1095
	ldr	r3, .L1502+16
	ldrh	r2, [r3, #48]
	tst	r2, #32
	beq	.L1095
	ldrh	r2, [r3, #48]
	tst	r2, #16
	beq	.L1095
	cmp	r6, #0
	beq	.L1096
	ldr	r2, .L1502+20
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L1096
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L1096
	b	.L1503
.L1504:
	.align	3
.L1502:
	.word	2576980378
	.word	1069128089
	.word	round
	.word	__aeabi_d2iz
	.word	67109120
	.word	buttons
	.word	hOff
	.word	collisionMap
	.word	__aeabi_i2d
	.word	__aeabi_dmul
.L1503:
.L1095:
	ldr	r7, [r4]
	cmp	r7, #0
	ble	.L1096
	ldr	r2, .L1502+28
	ldr	r3, .L1502+32
	ldr	r0, [r4, #88]
	ldr	r8, [r2]
	ldr	r9, .L1502+36
	mov	lr, pc
	bx	r3
	adr	r3, .L1505
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r9
	ldr	r3, .L1505+8
	mov	lr, pc
	bx	r3
	ldr	r2, [r4, #8]
	ldr	r3, .L1505+12
	sub	r7, r7, r2
	mov	lr, pc
	bx	r3
	sub	r7, r7, #1
	ldr	r3, [r4, #4]
	sub	r7, r7, r0
	add	r7, r8, r7, lsl #9
	ldrb	r2, [r7, r3]	@ zero_extendqisi2
	cmp	r2, #0
	add	r7, r7, r3
	beq	.L1096
	ldr	r3, [r4, #16]
	add	r7, r7, r3
	ldrb	r3, [r7, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r4, #48]
	bne	.L1197
.L1096:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L1197
.L1097:
	ldr	r3, [r4, #60]
	cmp	r3, #1
	bne	.L1196
	ldr	ip, [r4, #20]
	ldr	r2, [r4]
	ldr	r0, [r4, #8]
	add	r3, ip, r2
	ldr	r1, [r4, #4]
	add	r3, r3, r0
	b	.L1100
.L1116:
	mov	r2, #1
	ldr	r3, [r10]
	add	r3, r3, #2
	cmp	r3, #20
	str	r3, [r10]
	str	r2, [r6, #44]
	ble	.L1117
	mov	r3, #20
	str	r3, [r10]
.L1118:
	mov	r3, #9
	ldr	r2, .L1505+16
	b	.L1120
.L1119:
	sub	r3, r3, #1
	cmn	r3, #1
	sub	r2, r2, #92
	beq	.L1468
.L1120:
	ldr	r1, [r2, #880]
	cmp	r1, #1
	bne	.L1119
	mov	r2, #0
	add	r1, r3, r3, lsl #1
	rsb	r3, r3, r1, lsl #3
	ldr	r1, .L1505+16
	add	r3, r1, r3, lsl #2
	str	r2, [r3, #52]
	ldr	r5, [r4, #64]
	b	.L1115
.L1485:
	ldr	r3, [r4, #76]
	cmp	r3, #29
	ldr	r3, [sp, #28]
	bgt	.L1145
	cmp	r3, #1
	beq	.L1146
	ldr	r3, [r4, #64]
	cmp	r3, #1
	beq	.L1147
	ldr	r3, [r4, #60]
	cmp	r3, #1
	bne	.L1195
.L1147:
	mov	r2, #0
	mov	r3, #45
	str	r2, [r4, #80]
	str	r3, [r4, #76]
	b	.L1195
.L1056:
	mov	r2, #1
	ldr	r3, .L1505+20
	str	r2, [sp, #28]
	str	fp, [r3]
	b	.L1062
.L1476:
	ldr	r8, .L1505+24
	ldr	r7, [r4, #4]
	ldr	r6, [r8]
	sub	r3, r7, r6
	cmp	r3, #0
	ble	.L1466
	ldr	r2, .L1505+48
	ldr	r3, .L1505+28
	ldr	r0, [r4, #88]
	ldr	r9, [r2]
	ldr	r10, .L1505+32
	mov	lr, pc
	bx	r3
	adr	r3, .L1505
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r10
	ldr	r3, .L1505+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L1505+12
	mov	lr, pc
	bx	r3
	ldr	r2, [r4]
	ldr	r3, [r4, #12]
	sub	r1, r2, r0
	add	r1, r9, r1, lsl #9
	sub	r3, r7, r3
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L1466
	ldr	ip, [r4, #20]
	add	r1, r2, ip
	sub	r1, r1, #1
	sub	r1, r1, r0
	add	r1, r9, r1, lsl #9
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L1466
	add	ip, ip, ip, lsr #31
	add	r2, r2, ip, asr #1
	sub	r2, r2, #1
	sub	r0, r2, r0
	add	r0, r9, r0, lsl #9
	ldrb	r2, [r0, r3]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L1466
	cmp	r6, #0
	str	r3, [r4, #4]
	ble	.L1466
	sub	r3, r3, r6
	cmp	r3, #119
	bgt	.L1466
	ldr	r3, .L1505+36
	sub	r6, r6, #1
	str	r6, [r8]
	str	r3, [sp, #16]
	b	.L1196
.L1145:
	cmp	r3, #1
	bne	.L1147
.L1146:
	mov	r2, #1
	ldr	r3, .L1505+40
	str	r2, [r3]
	b	.L1147
.L1506:
	.align	3
.L1505:
	.word	2576980378
	.word	1069128089
	.word	round
	.word	__aeabi_d2iz
	.word	health
	.word	isFalling
	.word	hOff
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	oldButtons
	.word	wasAirSlash
	.word	buttons
	.word	collisionMap
	.word	jumpAniCooldown
	.word	67109120
	.word	ladderCollision
.L1067:
	cmp	r6, #0
	beq	.L1077
.L1078:
	ldr	r3, [r4, #92]
	cmp	r3, #5
	bgt	.L1465
	ldr	r2, .L1505+56
	ldrh	r1, [r2, #48]
	ldr	r2, [sp, #28]
	eor	r2, r2, #1
	bic	r2, r2, r1
	tst	r2, #1
	bne	.L1200
.L1465:
	ldr	r3, .L1505+44
.L1192:
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L1081
	cmp	fp, #0
	movne	r2, #0
	ldr	r3, [sp, #28]
	andeq	r2, r3, #1
	ldr	r3, .L1505+56
	ldrh	r3, [r3, #48]
	eor	r3, r3, #128
	ands	r3, r2, r3, lsr #7
	beq	.L1081
	ldr	r3, [r4, #60]
	cmp	r3, #0
	beq	.L1080
.L1084:
	ldr	r2, [r4, #48]
.L1198:
	ldr	r3, [r4, #52]
	cmp	r2, #0
	sub	r3, r3, #1
	str	r3, [r4, #52]
	bne	.L1091
.L1197:
	mov	r3, #24
	ldr	r2, .L1505+56
	ldrh	r2, [r2, #48]
	tst	r2, #64
	str	r3, [r4, #20]
	bne	.L1098
	ldr	r2, [r4]
	cmp	r2, #0
	ble	.L1098
	ldr	r0, [r4, #8]
	ldr	r3, .L1505+60
	sub	ip, r2, r0
	ldr	r3, [r3]
	ldr	r1, [r4, #4]
	sub	ip, ip, #1
	add	r3, r3, ip, lsl #9
	ldrb	ip, [r3, r1]	@ zero_extendqisi2
	cmp	ip, #0
	add	r3, r3, r1
	beq	.L1098
	ldr	ip, [r4, #16]
	add	r3, r3, ip
	ldrb	r3, [r3, #-9]	@ zero_extendqisi2
	cmp	r3, #0
	addne	r3, r2, #24
	addne	r3, r3, r0
	beq	.L1098
.L1099:
	mov	ip, #0
	mov	lr, #1
	str	ip, [r4, #88]
	mov	ip, #24
	str	lr, [r4, #60]
.L1100:
	cmp	r6, #0
	lsl	r7, r3, #9
	add	r3, r1, r3, lsl #9
	beq	.L1102
	ldr	lr, .L1505+44
	ldrh	r6, [lr]
	ands	r6, r6, #1
	bne	.L1102
	ldr	lr, .L1505+48
	ldr	r8, [lr]
	ldrb	lr, [r8, r3]	@ zero_extendqisi2
	cmp	lr, #0
	beq	.L1102
	ldr	lr, [r4, #16]
	add	lr, r1, lr
	sub	lr, lr, #2
	add	lr, r8, lr
	ldrb	r9, [lr, r7]	@ zero_extendqisi2
	cmp	r9, #0
	cmpne	r2, #0
	bgt	.L1497
.L1102:
	ldr	ip, .L1505+60
	ldr	ip, [ip]
	ldrb	r3, [ip, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1104
	add	r3, ip, r1
	ldr	r1, [r4, #16]
	add	r3, r3, r7
	add	r3, r3, r1
	ldrb	r3, [r3, #-9]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1103
.L1104:
	mov	r3, #0
	ldr	r1, .L1505+52
	str	r3, [r4, #60]
	str	r3, [r1]
.L1103:
	ldr	r3, .L1505+56
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r3, .L1505+56
	subeq	r2, r2, r0
	ldrh	r3, [r3, #48]
	streq	r2, [r4]
	tst	r3, #128
	ldreq	r3, [r4]
	addeq	r0, r3, r0
	ldr	r3, .L1505+56
	ldrh	r3, [r3, #48]
	streq	r0, [r4]
	tst	r3, #16
	moveq	r3, #1
	streq	r3, [r4, #56]
	ldr	r3, .L1505+56
	ldrh	r3, [r3, #48]
	tst	r3, #32
	moveq	r3, #2
	streq	r3, [r4, #56]
	b	.L1196
.L1077:
	ldr	r3, [r4, #92]
	cmp	r3, #5
	bgt	.L1081
	ldr	r2, .L1505+56
	ldrh	r1, [r2, #48]
	ldr	r2, [sp, #28]
	eor	r2, r2, #1
	bic	r2, r2, r1
	tst	r2, #1
	beq	.L1081
	ldr	r2, [r4, #60]
	cmp	r2, #0
	bne	.L1081
.L1204:
	ldr	r2, .L1505+56
	ldrh	r2, [r2, #48]
	tst	r2, #128
	beq	.L1082
	ldr	r2, [r4, #88]
	cmp	r2, #0
	addgt	r2, r2, #3
	addgt	r3, r3, #1
	strgt	r2, [r4, #88]
	strgt	r3, [r4, #92]
.L1082:
	cmp	r6, #0
	bne	.L1465
.L1081:
	ldr	r2, [r4, #48]
	cmp	r2, #1
	beq	.L1086
	cmp	r2, #2
	beq	.L1087
	b	.L1198
.L1098:
	ldr	r3, .L1505+56
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L1097
	ldr	r2, [r4]
	ldr	r1, .L1505+60
	ldr	r0, [r4, #8]
	add	r3, r2, #24
	ldr	ip, [r1]
	add	r3, r3, r0
	ldr	r1, [r4, #4]
	sub	lr, r3, #1
	add	ip, ip, lr, lsl #9
	ldrb	lr, [ip, r1]	@ zero_extendqisi2
	cmp	lr, #0
	add	ip, ip, r1
	beq	.L1097
	ldr	lr, [r4, #16]
	add	ip, ip, lr
	ldrb	ip, [ip, #-9]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L1097
	b	.L1099
.L1475:
	ldr	r2, [r4, #16]
	add	r3, r3, r2
	ldrb	r3, [r3, #-10]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1059
	adr	r3, .L1507
	ldmia	r3, {r2-r3}
	ldr	fp, .L1507+16
	add	r1, sp, #40
	ldmia	r1, {r0-r1}
	mov	lr, pc
	bx	fp
	mov	lr, pc
	bx	r8
	ldr	r2, [sp, #28]
	str	r0, [r4, #88]
	str	r2, [r4, #48]
	mov	lr, pc
	bx	r6
	adr	r3, .L1507+8
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r9
	mov	r2, r0
	mov	r3, r1
	ldr	r0, [sp, #32]
	str	r2, [sp, #16]
	str	r3, [sp, #20]
	mov	lr, pc
	bx	r6
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	fp
	mov	lr, pc
	bx	r8
	str	r0, [r4]
	b	.L1058
.L1483:
	mov	r2, #0
	ldr	r3, [r4, #72]
	cmp	r3, #1
	moveq	ip, #2
	str	r2, [fp]
	beq	.L1472
	cmp	r3, #2
	bne	.L1140
	mov	ip, #1
.L1472:
	ldr	r3, .L1507+20
	ldr	r0, .L1507+24
	ldr	r1, [r3]
	ldr	r3, .L1507+76
	str	ip, [r4, #72]
	mov	lr, pc
	bx	r3
	ldr	r3, [sp, #16]
	ldrh	r1, [r3]
	b	.L1140
.L1068:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L1074
	ldr	r3, [r4, #60]
	cmp	r3, #0
	bne	.L1074
	ldr	r8, .L1507+28
	b	.L1073
.L1117:
	ldr	r3, .L1507+32
	mov	r2, r7
	ldr	r1, [r3]
	mov	r0, fp
	ldr	r3, .L1507+76
	mov	lr, pc
	bx	r3
	b	.L1118
.L1086:
	ldr	r8, .L1507+28
	ldr	r1, [r4, #4]
	ldr	r7, [r8]
	ldr	r2, [r4, #16]
	sub	r3, r1, r7
	add	r3, r3, r2
	cmp	r3, #239
	bgt	.L1090
	ldr	r3, .L1507+36
	ldr	r0, [r4, #12]
	ldr	r10, [r4]
	ldr	fp, [r3]
	add	r1, r1, r0
	add	r3, r10, #8
	add	r3, fp, r3, lsl #9
	add	r9, r2, r1
	ldrb	r3, [r3, r9]	@ zero_extendqisi2
	cmp	r3, #0
	str	r0, [sp, #32]
	str	r1, [sp, #40]
	beq	.L1090
	ldr	r3, .L1507+40
	ldr	r0, [r4, #88]
	mov	lr, pc
	bx	r3
	adr	r3, .L1507+8
	ldmia	r3, {r2-r3}
	ldr	ip, .L1507+44
	mov	lr, pc
	bx	ip
	ldr	r3, .L1507+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L1507+52
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #20]
	add	r2, r10, r3
	sub	r2, r2, #1
	sub	r2, r2, r0
	add	r2, fp, r2, lsl #9
	ldrb	r2, [r2, r9]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L1090
	add	r3, r3, r3, lsr #31
	add	r3, r10, r3, asr #1
	sub	r3, r3, #1
	sub	r3, r3, r0
	add	r3, fp, r3, lsl #9
	ldrb	r3, [r3, r9]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1090
	ldr	r3, [sp, #32]
	ldr	r1, [sp, #40]
	cmp	r7, #272
	add	r3, r3, r1
	str	r3, [r4, #4]
	bge	.L1090
	sub	r3, r3, r7
	cmp	r3, #119
	addgt	r7, r7, #2
	strgt	r7, [r8]
	b	.L1090
.L1484:
	ldr	r3, [r4, #60]
	ldr	r1, [r4, #48]
	ldr	r2, [r4, #64]
	orr	r3, r3, r1
	orrs	r2, r3, r2
	bne	.L1142
	ldr	r3, [r4, #76]
	cmp	r3, #44
	ble	.L1142
	ldr	r0, [sp, #28]
	cmp	r0, #0
	movne	ip, #1
	ldr	r3, .L1507+56
	str	r2, [r4, #76]
	ldr	r1, [r3]
	moveq	r2, r0
	ldr	r3, .L1507+76
	ldr	r0, .L1507+60
	str	ip, [r4, #80]
	mov	lr, pc
	bx	r3
	b	.L1142
.L1481:
	mov	r2, #0
	add	ip, r3, r3, lsl #1
	sub	lr, r3, #3
	sub	r0, r3, #2
	rsb	ip, r3, ip, lsl #3
	add	r3, r1, r1, lsl #1
	rsb	r1, r1, r3, lsl #3
	add	r3, r0, r0, lsl #1
	add	r1, r9, r1, lsl #2
	rsb	r0, r0, r3, lsl #3
	add	ip, r9, ip, lsl #2
	add	r3, lr, lr, lsl #1
	str	r2, [ip, #52]
	rsb	r3, lr, r3, lsl #3
	str	r2, [r1, #52]
	ldr	r1, .L1507+32
	add	r0, r9, r0, lsl #2
	add	r3, r9, r3, lsl #2
	str	r2, [r0, #52]
	ldr	r1, [r1]
	str	r2, [r3, #52]
	mov	r0, fp
	ldr	r3, .L1507+76
	mov	lr, pc
	bx	r3
	b	.L1126
.L1069:
	ldrh	r3, [r3, #48]
	b	.L1074
.L1200:
	ldr	r2, [r4, #60]
	cmp	r2, #0
	bne	.L1082
	b	.L1204
.L1459:
	mov	r2, #0
	ldr	r3, .L1507+32
	mov	r0, fp
	ldr	r1, [r3]
	str	r2, [r9, #144]
	ldr	r3, .L1507+76
	str	r2, [r9, #52]
	mov	lr, pc
	bx	r3
	b	.L1126
.L1460:
	mov	r2, #0
	ldr	r3, .L1507+32
	mov	r0, fp
	ldr	r1, [r3]
	str	r2, [r9, #236]
	ldr	r3, .L1507+76
	str	r2, [r9, #144]
	str	r2, [r9, #52]
	mov	lr, pc
	bx	r3
	b	.L1126
.L1079:
	ldr	r2, [r4, #92]
	cmp	r2, #5
	ldrle	r2, .L1507+64
	ldrhle	r2, [r2, #48]
	b	.L1192
.L1497:
	sub	r9, r2, r0
	add	r8, r8, r1
	sub	r9, r9, #1
	ldrb	r10, [r8, r9, lsl #9]	@ zero_extendqisi2
	cmp	r10, #0
	beq	.L1102
	ldrb	r9, [lr, r9, lsl #9]	@ zero_extendqisi2
	cmp	r9, #0
	beq	.L1102
	add	ip, ip, ip, lsr #31
	add	ip, r2, ip, asr #1
	add	ip, ip, r0
	ldrb	r8, [r8, ip, lsl #9]	@ zero_extendqisi2
	cmp	r8, #0
	beq	.L1102
	ldrb	ip, [lr, ip, lsl #9]	@ zero_extendqisi2
	cmp	ip, #0
	strne	r6, [r4, #60]
	bne	.L1103
	b	.L1102
.L1508:
	.align	3
.L1507:
	.word	2576980378
	.word	1074370969
	.word	2576980378
	.word	1069128089
	.word	__aeabi_dsub
	.word	switchBlaster_length
	.word	switchBlaster_data
	.word	hOff
	.word	healthPickup_length
	.word	collisionMap
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	round
	.word	__aeabi_d2iz
	.word	slashSound_length
	.word	slashSound_data
	.word	67109120
	.word	busterSound_length
	.word	busterSound_data
	.word	playSoundB
.L1496:
	str	r2, [sp, #16]
	bl	fireProtoBulletLeft
.L1473:
	ldr	r3, .L1507+68
	ldr	r2, [sp, #16]
	ldr	r1, [r3]
	ldr	r0, .L1507+72
	ldr	r3, .L1507+76
	mov	lr, pc
	bx	r3
	b	.L1188
.L1495:
	str	r2, [sp, #16]
	bl	fireProtoBulletRight
	b	.L1473
.L1487:
	bl	firePlayerBulletRight
.L1470:
	ldr	r1, [r8]
	ldr	r3, .L1507+76
	mov	r2, r10
	mov	r0, r9
	mov	lr, pc
	bx	r3
	ldr	r3, [sp, #16]
	ldrh	r1, [r3]
	b	.L1136
.L1130:
	cmp	r3, #0
	beq	.L1126
	b	.L1128
.L1488:
	bl	firePlayerBulletLeft
	b	.L1470
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateProtoBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateProtoBullet, %function
updateProtoBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #52]
	cmp	r2, #0
	mov	r3, r0
	bxne	lr
	ldr	r2, [r0, #60]
	cmp	r2, #1
	beq	.L1513
	cmp	r2, #2
	bxne	lr
	b	updateProtoBullet.part.0
.L1513:
	ldr	ip, .L1514
	ldr	r0, [r0, #12]
	ldr	r1, [r3, #24]
	ldr	ip, [ip]
	add	r1, r0, r1
	sub	r1, r1, ip
	cmp	r1, #255
	ldrle	r2, [r3, #20]
	addle	r0, r2, r0
	strle	r0, [r3, #12]
	strgt	r2, [r3, #52]
	bx	lr
.L1515:
	.align	2
.L1514:
	.word	hOff
	.size	updateProtoBullet, .-updateProtoBullet
	.align	2
	.global	drawProtoBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawProtoBullets, %function
drawProtoBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r8, .L1522
	ldr	r0, .L1522+4
	ldr	r1, .L1522+8
	ldr	lr, [r8]
	ldr	r2, .L1522+12
	ldr	r3, .L1522+16
	ldrh	r7, [r0]
	ldrh	r6, [r1]
	ldr	r5, .L1522+20
	ldr	r4, .L1522+24
	add	r2, r2, lr, lsl #3
	add	ip, r3, #460
.L1519:
	ldr	r1, [r3, #52]
	cmp	r1, #0
	beq	.L1517
	ldrh	r1, [r2]
	orr	r1, r1, #512
	strh	r1, [r2]	@ movhi
.L1518:
	add	r3, r3, #92
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L1519
	add	lr, lr, #5
	str	lr, [r8]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L1517:
	add	r0, r3, #8
	ldm	r0, {r0, r1}
	sub	r0, r0, r7
	sub	r1, r1, r6
	and	r0, r0, #255
	and	r1, r1, r5
	strh	r4, [r2, #4]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	b	.L1518
.L1523:
	.align	2
.L1522:
	.word	shadowOAMIndex
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	protoBullets
	.word	511
	.word	857
	.size	drawProtoBullets, .-drawProtoBullets
	.align	2
	.global	initProtoShield
	.syntax unified
	.arm
	.fpu softvfp
	.type	initProtoShield, %function
initProtoShield:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	mov	r0, #8
	mov	r1, #32
	ldr	r3, .L1525
	str	r2, [r3, #52]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r0, [r3, #24]
	str	r1, [r3, #28]
	bx	lr
.L1526:
	.align	2
.L1525:
	.word	protoShield
	.size	initProtoShield, .-initProtoShield
	.align	2
	.global	updateProtoShield
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateProtoShield, %function
updateProtoShield:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L1567
	ldr	r2, [r3, #72]
	cmp	r2, #3
	sub	sp, sp, #20
	beq	.L1562
	ldr	r5, .L1567+4
	ldr	r2, [r5, #52]
	cmp	r2, #0
	beq	.L1531
.L1527:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L1562:
	ldr	r2, [r3, #84]
	cmp	r2, #49
	ble	.L1563
	mov	r2, #0
	ldr	r5, .L1567+4
	str	r2, [r5, #52]
.L1531:
	ldr	r2, [r3, #56]
	cmp	r2, #1
	beq	.L1564
	cmp	r2, #2
	bne	.L1534
	ldr	r1, [r3, #20]
	ldr	r0, [r3, #48]
	ldr	r2, [r3]
	add	r1, r1, r1, lsr #31
	ldr	r3, [r3, #4]
	cmp	r0, #2
	add	r2, r2, r1, asr #1
	subeq	r3, r3, #7
	subne	r3, r3, #10
	subne	r2, r2, #6
	str	r3, [r5, #12]
	str	r2, [r5, #8]
.L1534:
	ldr	r8, .L1567+8
	ldr	r3, [r8]
	cmp	r3, #0
	ble	.L1545
	mov	r6, #0
	mov	fp, #1
	ldr	r4, .L1567+12
	ldr	r9, .L1567+16
	ldr	r10, .L1567+20
	b	.L1544
.L1542:
	ldr	r3, [r8]
	cmp	r6, r3
	add	r4, r4, #92
	bge	.L1545
.L1544:
	ldr	r7, [r4, #52]
	cmp	r7, #0
	add	r6, r6, #1
	bne	.L1542
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldr	r0, [r4, #28]
	ldr	r1, [r4, #24]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #8]
	ldr	r0, [r5, #12]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L1542
	ldr	r3, .L1567+24
	mov	r2, r7
	ldr	r1, [r3]
	mov	r0, r10
	ldr	r3, .L1567+28
	mov	lr, pc
	bx	r3
	ldr	r3, [r8]
	cmp	r6, r3
	str	fp, [r4, #52]
	add	r4, r4, #92
	blt	.L1544
.L1545:
	ldr	r8, .L1567+32
	ldr	r3, [r8]
	cmp	r3, #0
	ble	.L1527
	mov	r6, #0
	mov	fp, #1
	ldr	r4, .L1567+36
	ldr	r9, .L1567+16
	ldr	r10, .L1567+20
	b	.L1549
.L1547:
	ldr	r3, [r8]
	cmp	r6, r3
	add	r4, r4, #92
	bge	.L1527
.L1549:
	ldr	r7, [r4, #52]
	cmp	r7, #0
	add	r6, r6, #1
	bne	.L1547
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	ldr	r0, [r4, #28]
	ldr	r1, [r4, #24]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #8]
	ldr	r0, [r5, #12]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L1547
	ldr	r3, .L1567+24
	mov	r2, r7
	ldr	r1, [r3]
	mov	r0, r10
	ldr	r3, .L1567+28
	mov	lr, pc
	bx	r3
	str	fp, [r4, #52]
	b	.L1547
.L1563:
	mov	r2, #1
	ldr	r3, .L1567+4
	str	r2, [r3, #52]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L1564:
	ldr	ip, [r3, #60]
	ldr	r0, [r3, #20]
	ldr	r1, [r3]
	ldr	r2, [r3, #16]
	cmp	ip, #1
	ldr	ip, [r3, #4]
	add	r0, r0, r0, lsr #31
	add	r1, r1, r0, asr #1
	add	r2, r2, ip
	beq	.L1565
	ldr	r0, .L1567+40
	ldr	r0, [r0]
	cmp	r0, #1
	beq	.L1566
	ldr	r3, [r3, #48]
	cmp	r3, #1
	addeq	r2, r2, #8
	subne	r2, r2, #1
	subne	r1, r1, #6
	str	r2, [r5, #12]
	str	r1, [r5, #8]
	b	.L1534
.L1565:
	sub	r2, r2, #6
	sub	r1, r1, #6
	str	r2, [r5, #12]
	str	r1, [r5, #8]
	b	.L1534
.L1566:
	add	r2, r2, #4
	sub	r1, r1, #6
	str	r2, [r5, #12]
	str	r1, [r5, #8]
	b	.L1534
.L1568:
	.align	2
.L1567:
	.word	player
	.word	protoShield
	.word	moleBulletCount
	.word	moleBullets
	.word	collision
	.word	enemyDinked_data
	.word	enemyDinked_length
	.word	playSoundB
	.word	joeBulletCount
	.word	joeBullets
	.word	isFalling
	.size	updateProtoShield, .-updateProtoShield
	.align	2
	.global	drawProtoShield
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawProtoShield, %function
drawProtoShield:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L1577
	ldr	r3, [r1, #52]
	ldr	ip, .L1577+4
	cmp	r3, #0
	ldr	r2, [ip]
	beq	.L1570
	ldr	r0, .L1577+8
	lsl	r1, r2, #3
	ldrh	r3, [r0, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	str	r2, [ip]
	strh	r3, [r0, r1]	@ movhi
	bx	lr
.L1570:
	ldr	r0, .L1577+12
	ldr	r3, [r1, #8]
	ldr	r0, [r0]
	sub	r3, r3, r0
	and	r3, r3, #255
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L1577+16
	push	{r4, lr}
	ldr	r1, [r1, #12]
	ldr	r4, [r0]
	ldr	lr, .L1577+20
	ldr	r0, .L1577+8
	sub	r1, r1, r4
	ldr	r4, [lr, #56]
	lsl	r1, r1, #23
	lsl	lr, r2, #3
	strh	r3, [r0, lr]	@ movhi
	lsr	r1, r1, #23
	add	r0, r0, r2, lsl #3
	cmp	r4, #1
	strh	r1, [r0, #2]	@ movhi
	beq	.L1576
	cmp	r4, #2
	moveq	r3, #792
	addeq	r2, r2, #1
	streq	r2, [ip]
	pop	{r4, lr}
	strheq	r3, [r0, #4]	@ movhi
	bx	lr
.L1576:
	ldr	r3, .L1577+24
	add	r2, r2, #1
	str	r2, [ip]
	pop	{r4, lr}
	strh	r3, [r0, #4]	@ movhi
	bx	lr
.L1578:
	.align	2
.L1577:
	.word	protoShield
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	vOff
	.word	hOff
	.word	player
	.word	793
	.size	drawProtoShield, .-drawProtoShield
	.align	2
	.global	initCheat
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCheat, %function
initCheat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L1580
	str	r2, [r3]
	bx	lr
.L1581:
	.align	2
.L1580:
	.word	cheatTimer
	.size	initCheat, .-initCheat
	.align	2
	.global	updateCheat
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCheat, %function
updateCheat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1596
	ldrh	r2, [r3, #48]
	push	{r4, r5, r6, lr}
	ldr	r4, .L1596+4
	tst	r2, #512
	ldr	r1, [r4, #72]
	bne	.L1583
	ldrh	r2, [r3, #48]
	tst	r2, #256
	beq	.L1595
.L1583:
	cmp	r1, #3
	beq	.L1594
.L1582:
	pop	{r4, r5, r6, lr}
	bx	lr
.L1595:
	ldrh	r2, [r3, #48]
	ands	r6, r2, #64
	bne	.L1583
	cmp	r1, #3
	beq	.L1594
	mov	r0, #1
	mov	r2, #420
	ldr	r1, .L1596+8
	ldr	r5, .L1596+12
	ldr	r3, .L1596+16
	str	r0, [r1]
	str	r2, [r5]
	mov	lr, pc
	bx	r3
	ldr	r3, .L1596+20
	mov	r2, r6
	ldr	r1, [r3]
	ldr	r0, .L1596+24
	ldr	r3, .L1596+28
	mov	lr, pc
	bx	r3
	mov	r3, #3
	str	r3, [r4, #72]
	b	.L1584
.L1594:
	ldr	r5, .L1596+12
.L1584:
	ldr	r3, [r5]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r5]
	bgt	.L1582
	ldr	r4, .L1596+32
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L1582
	ldr	r3, .L1596+36
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4]
	b	.L1582
.L1597:
	.align	2
.L1596:
	.word	67109120
	.word	player
	.word	usedCheat
	.word	cheatTimer
	.word	pauseSound
	.word	protoMode_length
	.word	protoMode_data
	.word	playSoundB
	.word	cheatTimerCheck
	.word	unpauseSound
	.size	updateCheat, .-updateCheat
	.align	2
	.global	updateDeath
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDeath, %function
updateDeath:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L1632
	ldr	r3, [r4]
	cmp	r3, #0
	ble	.L1629
	ldr	r4, .L1632+4
	ldr	r3, [r4]
	cmp	r3, #0
	bgt	.L1604
	ldr	r6, .L1632+8
	ldr	r2, [r6]
	cmp	r2, #0
	beq	.L1605
	ldr	r7, .L1632+12
	ldr	r2, [r7]
	cmp	r2, #0
	beq	.L1630
	ldr	r5, .L1632+16
	ldr	r2, [r5]
	cmp	r2, #0
	bge	.L1627
	cmp	r3, #0
	beq	.L1628
	mov	r8, #140
	mov	r2, #100
	mov	lr, #80
	mov	r0, #2
	mov	r1, #12
	mov	ip, #0
	ldr	r3, .L1632+20
	str	r8, [r3]
	ldr	r3, .L1632+24
.L1610:
	str	r2, [r3, #12]
	add	r2, r2, #10
	cmp	r2, #150
	str	lr, [r3, #8]
	str	r0, [r3, #48]
	str	r1, [r3, #32]
	str	ip, [r3, #52]
	add	r3, r3, #92
	bne	.L1610
	mov	r2, #10
	mov	r1, #0
	mov	r0, r2
	ldr	r3, .L1632+28
	str	ip, [r3]
	ldr	r3, .L1632+32
.L1611:
	str	r2, [r3, #8]
	add	r2, r2, #4
	cmp	r2, #50
	str	r0, [r3, #12]
	str	r1, [r3, #52]
	add	r3, r3, #92
	bne	.L1611
	bl	initGamePlayer
	ldr	r3, .L1632+36
	ldr	r1, [r3]
	cmp	r1, #0
	ble	.L1616
	mov	r0, #1
	mov	ip, #2
	mov	r2, #8
	mvn	r8, #7
	mov	lr, #0
	ldr	r3, .L1632+40
	add	r9, r1, r1, lsl r0
	rsb	r1, r1, r9, lsl #3
	add	r1, r3, r1, lsl ip
.L1615:
	str	r2, [r3, #28]
	str	r2, [r3, #24]
	str	r8, [r3, #8]
	str	lr, [r3, #12]
	str	ip, [r3, #20]
	str	r0, [r3, #52]
	add	r3, r3, #92
	cmp	r3, r1
	bne	.L1615
.L1616:
	ldr	r3, .L1632+44
	ldr	r1, [r3]
	cmp	r1, #0
	ble	.L1614
	mov	r0, #1
	mov	ip, #2
	mov	r2, #8
	mvn	r8, #7
	mov	lr, #0
	ldr	r3, .L1632+48
	add	r9, r1, r1, lsl r0
	rsb	r1, r1, r9, lsl #3
	add	r1, r3, r1, lsl ip
.L1617:
	str	r2, [r3, #28]
	str	r2, [r3, #24]
	str	r8, [r3, #8]
	str	lr, [r3, #12]
	str	ip, [r3, #20]
	str	r0, [r3, #52]
	add	r3, r3, #92
	cmp	r3, r1
	bne	.L1617
.L1614:
	ldr	r3, .L1632+52
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L1632+56
	ldr	r3, .L1632+60
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, [r5]
	str	r3, [r6]
	str	r3, [r7]
	sub	r2, r2, #1
	ldr	r3, [r4]
	b	.L1607
.L1604:
	ldr	r5, .L1632+16
	ldr	r2, [r5]
	cmp	r2, #0
	blt	.L1608
.L1627:
	sub	r2, r2, #1
.L1607:
	sub	r3, r3, #1
	str	r3, [r4]
	str	r2, [r5]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L1629:
	ldr	r3, .L1632+64
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L1632+68
	ldr	r1, [r3, #56]
	ldr	ip, .L1632+72
	ldr	r0, .L1632+8
	cmp	r1, r2
	str	r2, [r3, #72]
	str	r2, [ip, #52]
	str	r2, [r0]
	beq	.L1631
	cmp	r1, #2
	moveq	r1, #8
	moveq	r2, #3
	streq	r1, [r3, #28]
	streq	r2, [r3, #36]
.L1601:
	mov	lr, #20
	mov	ip, #1
	mov	r3, #30
	ldr	r0, .L1632+76
	ldr	r5, .L1632+16
	ldr	r1, [r0]
	ldr	r2, [r5]
	sub	r1, r1, #1
	str	lr, [r4]
	str	r1, [r0]
	ldr	r4, .L1632+4
	ldr	r1, .L1632+80
	cmp	r2, #0
	str	ip, [r1, #52]
	str	r3, [r4]
	bge	.L1627
	b	.L1628
.L1605:
	ldr	r5, .L1632+16
.L1628:
	ldr	r2, [r5]
	b	.L1627
.L1608:
	ldr	r1, .L1632+8
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L1628
	b	.L1627
.L1631:
	mov	r1, #8
	mov	r2, #2
	str	r1, [r3, #28]
	str	r2, [r3, #36]
	b	.L1601
.L1630:
	ldr	r3, .L1632+84
	ldr	r0, .L1632+88
	ldr	r1, [r3]
	ldr	r3, .L1632+92
	mov	lr, pc
	bx	r3
	mov	r3, #1
	ldr	r2, .L1632+68
	str	r3, [r7]
	str	r3, [r2, #44]
	ldr	r5, .L1632+16
	mov	r2, #179
	ldr	r3, [r4]
	b	.L1607
.L1633:
	.align	2
.L1632:
	.word	playerHealth
	.word	deathTranTimer
	.word	deathCheck
	.word	deathSoundCheck
	.word	deathTimer
	.word	readyTimer
	.word	ready
	.word	cheatTimer
	.word	health
	.word	moleBulletCount
	.word	moleBullets
	.word	joeBulletCount
	.word	joeBullets
	.word	gameSong_length
	.word	gameSong_data
	.word	playSoundA
	.word	stopSound
	.word	player
	.word	hurt
	.word	playerLives
	.word	protoShield
	.word	deathSound_length
	.word	deathSound_data
	.word	playSoundB
	.size	updateDeath, .-updateDeath
	.align	2
	.global	initHurt
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHurt, %function
initHurt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	mov	r1, #6
	mov	r2, #1
	ldr	r3, .L1635
	str	r0, [r3, #44]
	str	r1, [r3, #32]
	str	r2, [r3, #52]
	bx	lr
.L1636:
	.align	2
.L1635:
	.word	hurt
	.size	initHurt, .-initHurt
	.align	2
	.global	updateHurt
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHurt, %function
updateHurt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1642
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L1638
	ldr	r3, .L1642+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L1638
	ldr	r3, .L1642+8
	ldr	r3, [r3]
	cmp	r3, #89
	movgt	r3, #1
	movle	r3, #0
	ldr	r2, .L1642+12
	str	r3, [r2, #52]
	bxgt	lr
	ldr	r1, [r2, #32]
	ldr	r3, .L1642+16
	smull	r0, r3, r1, r3
	ldr	r0, .L1642+20
	sub	r3, r3, r1, asr #31
	ldm	r0, {r0, ip}
	add	r3, r3, r3, lsl #1
	subs	r3, r1, r3, lsl #1
	str	ip, [r2, #12]
	str	r0, [r2, #8]
	bne	.L1640
	ldr	r0, [r2, #44]
	cmp	r0, #0
	addle	r0, r0, #1
	strle	r0, [r2, #44]
	strgt	r3, [r2, #44]
.L1640:
	add	r1, r1, #1
	str	r1, [r2, #32]
	bx	lr
.L1638:
	mov	r2, #1
	ldr	r3, .L1642+12
	str	r2, [r3, #52]
	bx	lr
.L1643:
	.align	2
.L1642:
	.word	playerHealth
	.word	deathCheck
	.word	iFramesTimer
	.word	hurt
	.word	715827883
	.word	player
	.size	updateHurt, .-updateHurt
	.align	2
	.global	drawHurt
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHurt, %function
drawHurt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L1648
	ldr	ip, .L1648+4
	ldr	r3, [r1, #52]
	ldr	r2, [ip]
	cmp	r3, #0
	push	{r4, lr}
	add	lr, r2, #1
	beq	.L1645
	ldr	r1, .L1648+8
	lsl	r2, r2, #3
	ldrh	r3, [r1, r2]
	orr	r3, r3, #512
	str	lr, [ip]
	strh	r3, [r1, r2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L1645:
	ldr	r0, .L1648+12
	ldr	r3, [r1, #12]
	ldr	r0, [r0]
	sub	r3, r3, #2
	sub	r3, r3, r0
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L1648+16
	ldr	r4, [r0]
	ldr	r0, [r1, #8]
	ldr	r1, [r1, #44]
	sub	r0, r0, r4
	ldr	r4, .L1648+8
	add	r1, r1, #85
	str	lr, [ip]
	and	r0, r0, #255
	lsl	ip, r2, #3
	lsl	r1, r1, #2
	add	r2, r4, r2, lsl #3
	strh	r0, [r4, ip]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L1649:
	.align	2
.L1648:
	.word	hurt
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawHurt, .-drawHurt
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
	mov	r2, #0
	ldr	r3, .L1652
	push	{r4, lr}
	str	r2, [r3]
	bl	drawHealth
	bl	drawHurt
	bl	drawReady
	bl	drawText
	bl	drawSmallHealthPickups
	bl	drawLargeHealthPickups
	bl	drawSniperJoes
	bl	drawPlayer
	bl	drawLives
	bl	drawPlayerBullets
	bl	drawProtoBullets
	bl	drawHoriOctoEyes
	bl	drawVertOctoEyes
	bl	drawMoleGuys
	bl	drawMoleBullets
	bl	drawJoeBullets
	bl	drawProtoShield
	ldr	r3, .L1652+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L1652+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L1652+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #67108864
	ldr	r3, .L1652+16
	ldr	r2, [r3]
	add	r3, r2, r2, lsr #31
	asr	r3, r3, #1
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r2, [r1, #16]	@ movhi
	pop	{r4, lr}
	strh	r3, [r1, #20]	@ movhi
	bx	lr
.L1653:
	.align	2
.L1652:
	.word	shadowOAMIndex
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.size	drawGame, .-drawGame
	.align	2
	.global	initWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	initWin, %function
initWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	mov	ip, #300
	ldr	r0, .L1655
	ldr	r1, .L1655+4
	ldr	r2, .L1655+8
	str	ip, [r0]
	str	r3, [r1]
	str	r3, [r2]
	bx	lr
.L1656:
	.align	2
.L1655:
	.word	winTimer
	.word	winCheck
	.word	winSoundCheck
	.size	initWin, .-initWin
	.align	2
	.global	updateWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateWin, %function
updateWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1670
	ldr	r3, [r3]
	push	{r4, lr}
	ldr	r4, .L1670+4
	cmp	r3, #0
	ldr	r3, [r4]
	ble	.L1669
	cmp	r3, #0
	bne	.L1657
	ldr	r3, .L1670+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L1659
.L1657:
	pop	{r4, lr}
	bx	lr
.L1669:
	mov	ip, #1
	ldr	r1, .L1670+12
	ldr	r2, [r1]
	ldr	r0, .L1670+8
	cmp	r3, #0
	sub	r3, r2, #1
	str	r3, [r1]
	str	ip, [r0]
	bne	.L1657
.L1659:
	ldr	r3, .L1670+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L1670+20
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L1670+24
	ldr	r3, .L1670+28
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r4]
	pop	{r4, lr}
	bx	lr
.L1671:
	.align	2
.L1670:
	.word	enemyCount
	.word	winSoundCheck
	.word	winCheck
	.word	winTimer
	.word	stopSound
	.word	winSong_length
	.word	winSong_data
	.word	playSoundA
	.size	updateWin, .-updateWin
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L1716
	bl	updateReady
	bl	updateWin
	ldr	r3, [r4, #144]
	cmp	r3, #0
	bne	.L1714
.L1673:
	bl	updateDeath
	ldr	r3, [r4, #144]
	cmp	r3, #0
	beq	.L1674
	ldr	r3, .L1716+4
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L1715
.L1674:
	ldr	r6, .L1716+8
	ldr	r3, [r6]
	cmp	r3, #0
	ble	.L1675
	add	r3, r3, #1
	str	r3, [r6]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L1715:
	ldr	r3, .L1716+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L1674
	ldr	r6, .L1716+8
.L1675:
	bl	updatePlayer
	bl	updateHurt
	ldr	r0, .L1716+16
	bl	updatePlayerBullet
	ldr	r0, .L1716+20
	bl	updatePlayerBullet
	ldr	r0, .L1716+24
	bl	updatePlayerBullet
	ldr	r0, .L1716+28
	bl	updateProtoBullet
	ldr	r0, .L1716+32
	bl	updateProtoBullet
	ldr	r0, .L1716+36
	bl	updateProtoBullet
	ldr	r7, .L1716+40
	ldr	r0, .L1716+44
	bl	updateProtoBullet
	ldr	r0, .L1716+48
	bl	updateProtoBullet
	ldr	r3, [r7]
	cmp	r3, #0
	movgt	r5, #0
	ldrgt	r4, .L1716+52
	ble	.L1682
.L1681:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	add	r5, r5, #1
	moveq	r0, r4
	bleq	updateHoriOctoEye.part.0
.L1680:
	ldr	r3, [r7]
	cmp	r3, r5
	add	r4, r4, #92
	bgt	.L1681
.L1682:
	ldr	r7, .L1716+56
	ldr	r3, [r7]
	cmp	r3, #0
	movgt	r5, #0
	ldrgt	r4, .L1716+60
	ble	.L1679
.L1686:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	add	r5, r5, #1
	moveq	r0, r4
	bleq	updateVertOctoEye.part.0
.L1685:
	ldr	r3, [r7]
	cmp	r3, r5
	add	r4, r4, #92
	bgt	.L1686
.L1679:
	ldr	r7, .L1716+64
	bl	animateHoriEyes
	bl	animateVertEyes
	ldr	r3, [r7]
	cmp	r3, #0
	movgt	r5, #0
	ldrgt	r4, .L1716+68
	ble	.L1684
.L1690:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	add	r5, r5, #1
	moveq	r0, r4
	bleq	updateMoleGuy.part.0
.L1689:
	ldr	r3, [r7]
	cmp	r3, r5
	add	r4, r4, #92
	bgt	.L1690
.L1684:
	ldr	r7, .L1716+72
	ldr	r3, [r7]
	cmp	r3, #0
	movgt	r5, #0
	ldrgt	r4, .L1716+76
	ble	.L1688
.L1693:
	mov	r0, r4
	bl	updateMoleBullet
	ldr	r3, [r7]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #92
	bgt	.L1693
.L1688:
	ldr	r7, .L1716+80
	ldr	r3, [r7]
	cmp	r3, #0
	movgt	r5, #0
	ldrgt	r4, .L1716+84
	ble	.L1692
.L1697:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	add	r5, r5, #1
	moveq	r0, r4
	bleq	updateSniperJoe.part.0
.L1696:
	ldr	r3, [r7]
	cmp	r3, r5
	add	r4, r4, #92
	bgt	.L1697
.L1692:
	ldr	r7, .L1716+88
	ldr	r3, [r7]
	cmp	r3, #0
	movgt	r5, #0
	ldrgt	r4, .L1716+92
	ble	.L1695
.L1698:
	mov	r0, r4
	bl	updateJoeBullet
	ldr	r3, [r7]
	add	r5, r5, #1
	cmp	r3, r5
	add	r4, r4, #92
	bgt	.L1698
.L1695:
	bl	updateProtoShield
	bl	animatePickups
	bl	animateSniperJoes
	ldr	r3, [r6]
	add	r3, r3, #1
	str	r3, [r6]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L1714:
	bl	updateCheat
	b	.L1673
.L1717:
	.align	2
.L1716:
	.word	ready
	.word	cheatTimer
	.word	readyFrameOverride
	.word	winCheck
	.word	playerBullets
	.word	playerBullets+92
	.word	playerBullets+184
	.word	protoBullets
	.word	protoBullets+92
	.word	protoBullets+184
	.word	horiOctoEyeCount
	.word	protoBullets+276
	.word	protoBullets+368
	.word	horiOctoEyes
	.word	vertOctoEyeCount
	.word	vertOctoEyes
	.word	moleGuyCount
	.word	moleGuys
	.word	moleBulletCount
	.word	moleBullets
	.word	sniperJoeCount
	.word	sniperJoes
	.word	joeBulletCount
	.word	joeBullets
	.size	updateGame, .-updateGame
	.comm	ladderCollision,4,4
	.comm	collisionMap,4,4
	.comm	protoShield,92,4
	.comm	hurt,92,4
	.comm	protoBullets,460,4
	.comm	ready,460,4
	.comm	vertOctoEyes,920,4
	.comm	horiOctoEyes,920,4
	.comm	joeBullets,1840,4
	.comm	sniperJoes,920,4
	.comm	moleBullets,1840,4
	.comm	moleGuys,920,4
	.comm	playerBullets,276,4
	.comm	largeHealthPickup,920,4
	.comm	smallHealthPickup,920,4
	.comm	lives,920,4
	.comm	text,368,4
	.comm	health,920,4
	.comm	player,96,4
	.comm	winSoundCheck,4,4
	.comm	winCheck,4,4
	.comm	winTimer,4,4
	.comm	readyFrameOverride,4,4
	.comm	vertOctoEyeCount,4,4
	.comm	horiOctoEyeCount,4,4
	.comm	moleBulletCount,4,4
	.comm	moleGuyCount,4,4
	.comm	joeBulletCount,4,4
	.comm	sniperJoeCount,4,4
	.comm	smallPickupsCount,4,4
	.comm	largePickupsCount,4,4
	.comm	livesCount,4,4
	.comm	usedCheat,4,4
	.comm	levelsCleared,4,4
	.comm	shadowOAMIndex,4,4
	.comm	deathSoundCheck,4,4
	.comm	deathTranTimer,4,4
	.comm	deathCheck,4,4
	.comm	deathTimer,4,4
	.comm	cheatTimerCheck,4,4
	.comm	cheatTimer,4,4
	.comm	readyTimer,4,4
	.comm	wasAirSlash,4,4
	.comm	jumpAniCooldown,4,4
	.comm	reverseSpriteCheck,4,4
	.comm	isFalling,4,4
	.comm	ladderSpriteCheck,4,4
	.comm	enemyCount,4,4
	.comm	iFramesTimer,4,4
	.comm	toggleTimer,4,4
	.comm	playerLives,4,4
	.comm	playerHealth,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

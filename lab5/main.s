.text
	b start
	arr: .byte 5,10,15
	eoa:
.align
	start:
	ldr r0, =arr
	ldr r1, =eoa
	bl sum
	swi 0
	stop: b stop

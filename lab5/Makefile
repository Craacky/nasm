.text
	b start
	arr: .byte 5, 10, 15, 20, 25, 30
	eoa: .align
	
	start: 
	ldr r0, =arr
	ldr r1, =eoa
	bl sum
	
	stop: b stop

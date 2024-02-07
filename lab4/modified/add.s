.text
start:
	mov r0, #100
	mov r1, #9
	add r2, r1, r0
	sub r3, r0, r1
	mul r4, r1, r0
	ldr r5, [r6]
stop:	b stop

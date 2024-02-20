
.text
b start

msg_hello:	.asciz	"Has the afternoon passed?\n"
			.equ nul, 0
			.align
msg_yes:	.asciz "Good morning!"
			.equ nul, 0
			.align
msg_no:		.asciz "Good afternoon"
			.equ nul, 0
			.align

start:
	ldr r0, =0x40100000
	ldr r2, =msg_hello
loop:
	ldrb r3, [r2], #1
 	cmp r3, #nul
	strb r3, [r0]
	bne loop

is_symbol:
	ldrb r1, [r0]
	mov r2, r1
	cmp r2, #89
	beq print_day
	
	mov r2, r1
	cmp r2, #78
	beq print_morning
	
	b is_symbol
	
print_day:
	ldr r2, =msg_no
	
loop2:
	ldrb r3, [r2], #1
 	cmp r3, #nul
	strb r3, [r0]
	bne loop2
	b stop
print_morning:
	ldr r2, =msg_yes
	
loop3:
	ldrb r3, [r2], #1
 	cmp r3, #nul
	strb r3, [r0]
	bne loop3
	b stop
stop: b stop



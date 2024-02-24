
.text
b start

msg_hello:	.ascii	"\nHas the afternoon passed?\n"
			.align

msg_yes:	.ascii "Good morning!"
			.align

msg_no:		.ascii "Good afternoon!"
			.align


start:
	ldr r0, =0x40100000
	ldr r2, =msg_hello

//input from keyboard
input:
	ldrb r3, [r2], #1
 	cmp r3, #0
	strb r3, [r0]
	bne input

// check if our input == Y && N
check_symbol:
	ldrb r1, [r0]
	mov r2, r1
	cmp r2, #89
	beq picked_day
	
	cmp r2, #78
	beq picked_morning

	b check_symbol

//result when input = 'N'
picked_day:
	ldr r2, =msg_no
	beq result_loop

//result when input = 'Y'
picked_morning:
	ldr r2, =msg_yes
	beq result_loop

//output picked day or morning
result_loop:
	ldrb r3, [r2], #1
 	cmp r3, #0
	strb r3, [r0]
	bne result_loop
	b stop

stop: b stop



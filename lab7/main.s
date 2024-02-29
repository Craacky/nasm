.text 
    b start

fisrt_msg:  .asciz "input first val(0-9): "
            .align

second_msg: .asciz "    input second val(0-9): "
            .align

operation_msg: .asciz "     Choose operation(+): "
               .align


start:
    ldr r0, =0x40100000
    mov r2, #fisrt_msg

loop:
    ldr r1, [r2]
    strb r1, [r0]
    add r2, #1
    cmp r2, #second_msg
    bne loop

input:
    ldrb r1, [r0]
    mov r2, r1
    
    cmp r2, #48
    BMI input

    cmp r2, #58
    BPL input
    mov r3, r2
    sub r3, #48

   
delay:
    ldrb r1,[r0]
    mov r2, r1
    cmp r2, #' '
    beq loop1
    b delay

loop1:
    ldr r1, [r2]
    strb r1, [r0]
    add r2, #1
    cmp r2, #operation_msg
    bne loop1
    b input1
    
input1:
    ldrb r1, [r0]    
    mov r2, r1

    cmp r2, #48
    BMI input1

    cmp r2, #58
    BPL input1
    mov r4, r2
    sub r4, #48    
    
add:
    add r5,r3,r4
    add r5, #48
    strb r5, [r0]

    b stop

stop: b stop
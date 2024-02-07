section .data
    msg1_I: db 'Has the afternoon passed ?', 10
    msg1_O: equ $-msg1_I
    
    msg2_I: db 'Good mornig', 10
    msg2_O: equ $-msg2_I

    msg3_I: db 'Good aftrenoon',10
    msg3_O: equ $-msg3_I


section .bss
    buffer: RESB 80
    buffer_length: RESD 1

section .text
    global _start

_start:
    ; Print the input message
    mov eax, 4
    mov ebx, 1
    mov ecx, msg1_I
    mov edx, msg1_O
    int 0x80

    ; Read the input string
    mov eax, 3
    mov ebx, 0
    mov ecx, buffer
    mov edx, buffer_length
    int 0x80



    mov eax, 4
    mov ebx,1
begin_if:
    cmp BYTE[buffer], 'N' 
    jne end_if
    mov ecx, msg2_I
    mov edx, msg2_O
    int 0x80

end_if:
    mov ecx, msg3_I
    mov edx, msg3_O
    int 0x80

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80


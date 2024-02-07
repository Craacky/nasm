SECTION .data
    input_message: DB 'Enter a string: ', 10
    output_message: EQU $-input_message

SECTION .bss
    buffer: RESB 80
    buffer_length: RESD 1

SECTION .text
    GLOBAL _start

_start:
    ; Print the input message
    mov eax, 4
    mov ebx, 1
    mov ecx, input_message
    mov edx, output_message
    int 0x80

    ; Read the input string
    mov eax, 3
    mov ebx, 0
    mov ecx, buffer
    mov edx, buffer_length
    int 0x80
    mov DWORD [buffer_length], eax
    
    ; Print the output message
    mov eax, 4
    mov ebx, 1
    mov ecx, buffer
    mov edx, DWORD [buffer_length]
    int 0x80

    ; Exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80

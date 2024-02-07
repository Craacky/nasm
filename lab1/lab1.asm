section .data

	msg db 'Hello Yakutin!', 0xa, 0xd
	len equ $ - msg

section .text
	global _start

_start:
	mov eax, 4	;sys-write
	mov ebx, 1 	;file descryptor stdout
	mov ecx, msg	;our string
	mov edx, len	;len of the string

	int 0x80

	mov eax, 1 	;sys-exit
	mov ebx, 0	;err-code

	int 0x80

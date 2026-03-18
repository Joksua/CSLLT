section .data
        msg db "                        You all very good students", 10
        len equ $-msg
        msg1 db "                       **********", 10
        len1 equ $-msg1

section .text
global _start
_start:
        mov eax, 4
        mov ebx, 1
        mov ecx, msg1
        mov edx, len1
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, msg
        mov edx, len
        int 0x80

        mov eax, 4
        mov ebx, 1
        mov ecx, msg1
        mov edx, len1
        int 0x80

	mov eax, 1
	xor ebx, ebx
	int 0x80

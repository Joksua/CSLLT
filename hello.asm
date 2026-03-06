section .data
        msg1 db 'Hello World!', 0xA 0                   ; 1st string
	len1 equ $ - msg1

        msg2 db 'Welcome to NASM programming!', 0xA     ; 2nd string
	len2 equ $ - msg2

section .text
        global _start

_start:
        ; write 1st string
        mov eax, 4      ; sys_write (system call number)
        mov ebx, 1      ; file descriptor 1 (stdout)
        mov ecx, msg2   ; memory address of 1st string
        mov edx, len2     ; number of bytes for 1st string
        int 0x80        ; call kernel

        ; write 2nd string
        mov eax, 4
        mov ebx, 1
        mov ecx, msg1
        mov edx, len1
        int 0x80
; Exit
mov eax, 1
xor ebx, ebx
int 0x80

section .data
	msg db "Good Morning", 10
	msg2 db "Good Afternoon", 10
	msg3 db "Good Night", 10

section .text
global _start
_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg
	mov edx, 13
	int 0x80

	mov eax, 4
        mov ebx, 1
        mov ecx, msg2
        mov edx, 15
        int 0x80

	mov eax, 4
        mov ebx, 1
        mov ecx, msg3
        mov edx, 11
        int 0x80

	mov eax, 1
	int 0x80

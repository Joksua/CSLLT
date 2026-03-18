section .data
	msg db "Welcome to Malaysia!", 0xA
	msg_len equ 22

section .text
	global _start
_start:

	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 22
	syscall

	mov rax, 60
	xor rdi, rdi
	syscall

section .data
    message db "Hello, NASM!", 10  ; The string to print, with newline (ASCII 10)
    length equ $ - message          ; Calculate the length of the string

section .text
    global _start

_start:
    ; System call: sys_write (syscall number 1)
    mov rax, 1       ; syscall number for sys_write
    mov rdi, 1       ; file descriptor 1 (stdout)
    mov rsi, message ; pointer to string
    mov rdx, length  ; length of string
    syscall          ; invoke system call

    ; System call: sys_exit (syscall number 60)
    mov rax, 60      ; syscall number for exit
    xor rdi, rdi     ; exit code 0
    syscall          ; invoke system call

section .data
    message1 db "Hello, this is the first string!", 10  ; First string with newline
    len1 equ $ - message1  ; Calculate length of first string

    message2 db "And this is the second string!", 10  ; Second string with newline
    len2 equ $ - message2  ; Calculate length of second string

section .text
    global _start

_start:
    ; Print first string
    mov rax, 1       ; syscall number for sys_write
    mov rdi, 1       ; file descriptor 1 (stdout)
    mov rsi, message1 ; pointer to first string
    mov rdx, len1    ; length of first string
    syscall          ; invoke system call

    ; Print second string
    mov rax, 1       ; syscall number for sys_write
    mov rdi, 1       ; file descriptor 1 (stdout)
    mov rsi, message2 ; pointer to second string
    mov rdx, len2    ; length of second string
    syscall          ; invoke system call

    ; Exit program
    mov rax, 60      ; syscall number for exit
    xor rdi, rdi     ; exit code 0
    syscall          ; invoke system call

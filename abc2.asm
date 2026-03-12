section .data
        msg db 'A', 0xA, 0, 'B', 0xA, 0, 'C', 0xA, 0    

section .text
        global _start
        _start:

        mov eax, 4      
        mov ebx, 1     
        mov ecx, msg    ; display 1st message
        mov edx, 9     
        int 0x80            

; Exit
mov eax, 1
xor ebx, ebx
int 0x80

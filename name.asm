section .data
        msg db 'J', 10, 'O', 10, 'S', 10, 'H', 10, 'U', 10, 'A', 10, 0      

section .text
        global _start
        _start:

        mov eax, 4      
        mov ebx, 1     
        mov ecx, msg
        mov edx, 18     
        int 0x80            

; Exit
mov eax, 1
xor ebx, ebx
int 0x80

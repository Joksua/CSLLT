section .data
        msg db 'A'       ; 1st string
	msg1 db 'B'      ; 2nd string
        msg2 db 'C'      ; 3rd string

section .text
        global _start
        _start:

        mov eax, 4      
        mov ebx, 1     
        mov ecx, msg    ; display 1st message
        mov edx, 1     
        int 0x80       

        mov eax, 4      
        mov ebx, 1      
        mov ecx, msg1   ; display 2nd message
        mov edx, 1     
        int 0x80       

        mov eax, 4     
        mov ebx, 1      
        mov ecx, msg2   ; display 3rd message
        mov edx, 1     
        int 0x80        

; Exit
mov eax, 1
xor ebx, ebx
int 0x80

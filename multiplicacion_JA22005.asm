;multiplicacion - guia 5 - JA22005
section .data
    msg db 'Multiplicacion de: 4 * 2 = ', 0xA
    len_msg equ $ - msg
    
section .bss
    resultado resb 1

section .text
    global _start

_start:
    mov al, 4   
    mov bl, 2    
    mul bl       ; Multiplicacion
    add al, '0' 
    mov [resultado], al

    mov eax, 4   ; Escribe el mensaje
    mov ebx, 1
    mov ecx, msg
    mov edx, len_msg
    int 0x80

    mov eax, 4   ; Escribe el resultado
    mov ebx, 1
    mov ecx, resultado
    mov edx, 1
    int 0x80

    mov eax, 1   ; FIN
    xor ebx, ebx
    int 0x80
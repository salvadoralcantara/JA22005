;division - guia 5 - JA22005
section .data
    msg db 'Division de: 8 / 2 = ', 0xA
    len_msg equ $ - msg
    
section .bss
    resultado resd 1

section .text
    global _start

_start:
    mov eax, 8   
    mov ebx, 2    
    xor edx, edx 
    div ebx       ; Divide eax por ebx en este caso 8 entre 2 
    add eax, '0' ; lo pasa a ASCII
    mov [resultado], eax

    mov eax, 4    ; Se encarga de escribir el mensaje
    mov ebx, 1
    mov ecx, msg
    mov edx, len_msg
    int 0x80

    mov eax, 4    ; resultado.
    mov ebx, 1
    mov ecx, resultado
    mov edx, 2
    int 0x80

    mov eax, 1    ; FIN
    xor ebx, ebx
    int 0x80

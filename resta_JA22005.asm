;resta - Guia 5 JA22005
section .data
    msg db "La resta de los numeros: 8 - 3 - 1 es: ", 0xA
    len_msg equ $ - msg
    newline db 0xA

section .bss
    resultado resb 2

section .text
    global _start

_start:
    mov ax, 8
    sub ax, 3
    sub ax, 1

    add ax, '0'

    ; guarda el resultado
    mov [resultado], ax

    ; Mensaje
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len_msg
    int 0x80

    ; mostrar el resultado
    mov eax, 4
    mov ebx, 1
    mov ecx, resultado
    mov edx, 2
    int 0x80

    ; salto de linea
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; FIN
    mov eax, 1
    xor ebx, ebx
    int 0x80

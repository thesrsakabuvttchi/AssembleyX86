section .text
    global _start

_start:
    mov eax,1
    mov ebx,1
    mov esi,message
    mov edx,[msgLen]
    syscall

    mov eax,60
    mov edx,0
    syscall

    

section .data
    message: db "Hello World!",10
    msgLen: db $-message
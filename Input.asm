section .text
    global _start

_start:
    mov eax,0
    mov ebx,0
    mov esi,name
    mov edx,[msgLen]
    syscall
    
    mov eax,1
    mov ebx,1
    mov esi,message
    mov edx,[msgLen]
    syscall

    mov eax,60
    mov edx,0
    syscall

    

section .data
    message: db "Hello "
    name: db 100 dup (0)
    msgLen: db $-message
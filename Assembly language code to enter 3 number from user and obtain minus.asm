.stack 100h
.data
msg db 'Enter first number: $'
msg1 db 10,13,'Enter second number: $'
msg2 db 10,13,'Enter third number: $'
msg3 db 10,13,'Result: $'
.code
main:
    mov ax,@data
    mov ds,ax       

    mov ah,09h
    lea dx,msg
    int 21h  

    mov ah,01h
    int 21h
    sub al,48
    mov bl,al

    mov ah,09h
    lea dx,msg1
    int 21h

    mov ah,01h
    int 21h
    sub al,48
    sub bl,al

    mov ah,09h
    lea dx,msg2
    int 21h

    mov ah,01h
    int 21h
    sub al,48
    sub bl,al

    mov ah,09h
    lea dx,msg3
    int 21h

    add bl,48
    mov dl,bl
    mov ah,02h 
    int 21h

    mov ax,4Ch
    int 21h
end main
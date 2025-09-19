



.stack 100h
.data
my1 db 'Enter first number:$'
my2 db 10,13,'Enter second number:$'
my3 db 10,13,'Result:$'
.code
    mov ax,@data
    mov ds,ax

    mov ah,09h
    lea dx,my1
    int 21h
    
    mov ah,01h
    int 21h
    mov cl,al
    
    mov ah,09h
    lea dx,my2
    int 21h
    
    mov ah,01h
    int 21h
    mov bl,al
    
    mov ah,09h
    lea dx,my3
    int 21h
    
    sub bl,cl
    add bl,48
    mov dl,bl
    mov ah,2
    int 21h
    
    
ret





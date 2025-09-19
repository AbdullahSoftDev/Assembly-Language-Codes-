
include 'emu8086.inc'
.stack 100h
.data
    my db ' Enter first value: $'
    my1 db 10,13,' Enter second value: $'
    my2 db 10,13,' swamped values: $'
.code
    mov ax,@data
    mov ds,ax
    
    mov ah,09h
    lea dx,my
    int 21h
    
    mov ah,01h
    int 21h
    mov bl,al
    
    mov ah,09h
    lea dx,my1
    int 21h
    
    mov ah,01h
    int 21h
    mov cl,al
    
    mov al,bl
    mov bl,cl
    mov cl,al
    
    mov ah,09h
    lea dx,my2
    int 21h
    
    mov dl,bl
    mov ah,02h
    int 21h 
    print 32
    mov dl,cl
    mov ah,02h
    int 21h
    
    mov ah,4ch
    int 21h 

ret
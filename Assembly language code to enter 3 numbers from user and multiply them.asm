.stack 100h

.data
my db 'Enter first $'
my1 db 10,13,'Enter second $'
my2 db 10,13,'Enter third $'
my3 db 10,13,'result $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,09h
    lea dx,my
    int 21h
     
    mov ah,01h
    int 21h
    sub al,48
    mov bl,al
    
    mov ah,09h
    lea dx,my1
    int 21h

    mov ah,01h
    int 21h
    sub al,48
    mul bl
    mov bl,al    ;ta k wo lose na ho
    mov ah,09h
    lea dx,my2
    int 21h

    mov ah,01h
    int 21h
    sub al,48
    mov cl,al
    mul bl
    mov bl,cl
    mov bl,al
    mov ah,09h
    lea dx,my3
    int 21h
    
    add bl,30h
    mov dl,bl
    
    mov ah,02h
    int 21h

    mov ah,4ch
    int 21h
end main
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
    sub al,30h  ;convert ascii to hexa
    mov bl,al
    
    mov ah,09h
    lea dx,my1
    int 21h

    mov ah,01h
    int 21h
    sub al,30h 
    mov cl,al
    
    mov al,cl
    mul bl 
    
    add al,30h
    mov dl,al
    
    mov ah,02h
    int 21h

    mov ah,4ch
    int 21h
end main
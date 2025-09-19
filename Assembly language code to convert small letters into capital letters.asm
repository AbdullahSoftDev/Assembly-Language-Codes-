
.stack 100h
.data
my1 db 'Enter your Small letter:$'
my3 db 10,13,'Result:$'
.code
    mov ax,@data
    mov ds,ax

    mov ah,09h
    lea dx,my1
    int 21h
    
    mov ah,01h
    int 21h
    mov bl,al
             
    sub bl,32         
    
    mov ah,09h
    lea dx,my3
    int 21h
    
    mov dl,bl
    mov ah,02h
    int 21h
    
    mov ah,4ch
    int 21h
    
    
ret





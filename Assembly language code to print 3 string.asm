.stack 100h
.data
my  db        'My first string$'
my1 db 10,13, 'My second string$'
my2 db 10,13, 'My third string$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,my
    mov ah,09h
    int 21h
    
    lea dx,my1
    mov ah,09h
    int 21h
    
    lea dx,my2
    mov ah,09h
    int 21h
    
    mov ah,4ch
    int 21h
ret
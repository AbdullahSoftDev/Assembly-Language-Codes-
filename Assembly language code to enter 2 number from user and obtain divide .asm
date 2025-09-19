.stack 100h
.data 
my db 'Enter dividend $'
my1 db 10,13,'Enter divisor $'
my3 db 10,13,'result $'

.code
main:
    mov ax,@data
    mov ds,ax
    
    mov ah,09h
    lea dx,my
    int 21h
    
    mov ah,01h
    int 21h
    sub al,30h      
    mov bl,al
    
    mov ah,09h
    lea dx,my1
    int 21h
           
    mov ah,01h
    int 21h
    
    sub al,30h
    mov cl,al      
    
    mov ah,09h
    lea dx,my3
    int 21h
    
    mov al,bl       
    mov bl,cl
    mov ah,0
           
    div bl
              
    add al,30h      
    mov dl,al       
    mov ah,02h      
    int 21h
              
    mov ax,4Ch
    int 21h
end main
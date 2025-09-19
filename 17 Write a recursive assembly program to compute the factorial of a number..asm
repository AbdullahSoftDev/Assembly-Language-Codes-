include 'emu8086.inc'
.stack 100h
.data    
    v dw 1          
.code
    mov ah,1
    int 21h  
    sub al,48      
    mov bl,al      
    mov cx,bx
    mov v,1
    call l1  
l1: 
    cmp cx,1
    je e   
    mov ax,v
    mul cx          
    mov v,ax      
    dec cx       
    call l1
e:         
    mov ax,v      
    mov dl,al     
    mov ah,2      
    int 21h 
    mov ax,4Ch  
    int 21h
    
include 'emu8086.inc'
.stack 100h
.data    
v dw 1          
num db ?        

.code
    mov ah,1
    int 21h  
    sub al,48      
    mov bl,al      
    mov cx,bx
    mov v,1
l1:
    mov ax,v
    mul cx          
    mov v,ax      
    dec cx         
    jnz l1         
    mov ax,v      
    mov dl,al     
    mov ah,2      
    int 21h        
e:
    mov ax,4Ch  
    int 21h
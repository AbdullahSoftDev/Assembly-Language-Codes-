
include 'emu8086.inc'
.stack 100h
.data
n db 0
.code
mov ax,@data
mov ds,ax
call primee       

    print 'prime!'
    mov ah,4ch 
    int 21h    
    
primee proc 
    
print 'Enter a number '
    mov ah,1
    int 21h   

    sub al,48
    cmp al,1
    jle np
    mov n,al         

    mov bl,2
    mov cl,n  
prime: 
    cmp bl,n
    jge p       
    mov ah,0
    mov al,n
    div bl 
    cmp ah,0
    je np
    inc bl
    call prime
    
    np:
    print 'not prime!'
    
    mov ah,4ch 
    int 21h
    p:
    ret
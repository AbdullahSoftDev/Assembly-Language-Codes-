
include 'emu8086.inc'
.stack 100h
.data
num db 0
isp db 0
.code
mov ax,@data
mov ds,ax

print 'Enter a number '
    mov ah,1
    int 21h   

    sub al,48
    cmp al,1
    jle np
    mov num,al         

    mov bl,2
    mov cl,num  
l1: 
    cmp bl,num
    jge p       
    mov ah,0
    mov al,num
    div bl 
    cmp ah,0
    je np
    inc bl
    jmp l1
    
    np:
    print 'not prime!'
    
    mov ah,4ch 
    int 21h
    p:
    print 'prime!'
     
    mov ah,4ch 
    int 21h
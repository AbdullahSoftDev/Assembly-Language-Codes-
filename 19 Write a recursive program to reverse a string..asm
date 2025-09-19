
include 'emu8086.inc'
.stack 100h
.data  
str1 db 'HELLO I AM ABDULLAH$'
str2 db 20 dup('$')
.code
mov ax,@data
mov ds,ax
mov es,ax
             
lea si,str1+18
lea di,str2 
std    
    mov cx,19         
    rev:
    cmp cx,0
    je n
    movsb
    add di,2
    dec cx
    call rev 

n:
print ' Reverse!' 
lea dx,str2
mov ah,9
int 21h
mov ah,4ch
int 21h
             


include 'emu8086.inc'
.stack 100h
.data  
str1 db 'HELLO I AM ABDULLAH$'
str2 db 20 dup('$')
.code
mov ax,@data
mov ds,ax
mov es,ax

call rev
        
print ' Reverse!' 
lea dx,str2
mov ah,9
int 21h
mov ah,4ch
int 21h
             
rev proc             
lea si,str1+18
lea di,str2  

std    
mov cx,19
l1:         
    movsb
    add di,2
    loop l1 
    
    ret
rev endp
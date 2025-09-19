

include 'emu8086.inc'
.stack 100h
.data
.code
mov ah,1
int 21h
mov cl,al
test cl,1  
je even
print ' Odd ' 
mov al,'1'
mov bl,'2' 
mov cx,5
l1:             
    mov dl,al
    mov ah,2
    int 21h
    add al,bl
    sub al,48
    loop l1
jmp e

even:
print ' Even '
mov al,'2'
mov bl,'2' 
mov cx,5
l2:             
    mov dl,al
    mov ah,2
    int 21h
    add al,bl
    sub al,48
    loop l2
    jmp e
    
    e:
    mov ah,4ch
    int 21h
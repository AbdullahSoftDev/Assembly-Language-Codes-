
include 'emu8086.inc'
.stack 100h
.data
.code 
mov bx,1
mov cx,5
l1:
push cx  
mov ah,2
mov dl,32
l2:
    int 21h
    loop l2
    mov cx,bx
    mov dl,'*'
    l3:
    int 21h  
    loop l3
    printn
inc bx
inc bx
pop cx
loop l1


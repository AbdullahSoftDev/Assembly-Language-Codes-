

include 'emu8086.inc'
.stack 100h
.data
.code

mov bx,1
mov cx,5
l1:
push cx
    mov cx,bx 
    mov ax,'1'
    ll1:           
    mov dx,ax
    mov ah,02h
    int 21h
    inc ax
    loop ll1
printn
inc bx
pop cx
loop l1
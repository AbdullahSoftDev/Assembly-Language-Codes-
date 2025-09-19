

include 'emu8086.inc'
.stack 100h
.data
.code
mov cx,5
l1:
    push cx
    mov cx,4
    ll1:    
        mov dl,' '
        mov ah,2
        int 21h
        loop ll1
        mov cx,4
        ll2:
        mov dl,'*'
        mov ah,2
        int 21h 
        loop ll2
printn
pop cx
loop l1

mov cx,4
mov bx,8
l2:  
push cx
mov cx,bx
l2l:
mov dl,'*'
mov ah,02h
int 21h
loop l2l
printn
pop cx
loop l2 
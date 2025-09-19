

include 'emu8086.inc'
.stack 100h
.data
.code
    mov bx,1
    mov cx,5
l1:
    push cx
    mov cx,bx
        l2:
        mov dx,'*'
        mov ah,02h
        int 21h
        loop l2
        printn
        inc bx
        pop cx
loop l1
    
mov ah,4ch
int 21h
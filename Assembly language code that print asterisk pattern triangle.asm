include 'emu8086.inc'
.stack 100h
.data
.code
mov cx,6
mov bx,1
mov dl,'*'
    L1:
    mov cx,bx
        L2:
        mov dl,'*'
        mov ah,2
        int 21h
        loop L2
    printn
    inc bx
    dec cx
    cmp bx,6
    
    jz m
    loop L1
m:    
mov ah,4ch
int 21h
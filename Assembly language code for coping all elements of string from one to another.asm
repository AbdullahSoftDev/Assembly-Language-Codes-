
include 'emu8086.inc'
.stack 100h
.data
a1 db 'Hello!$'
a2 db 6 (dup?)
.code
mov ax,@data
mov ds,ax
mov es,ax    

lea si,a1
lea di,a2

cld
mov cx,6
rep movsb

mov cx,6
lea di,a2
l1:
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    loop l1
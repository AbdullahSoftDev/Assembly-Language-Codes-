
include 'emu8086.inc'
.stack 100h
.data
a1 db 'Hello!$'
a2 db 6 dup('$')
.code
mov ax,@data
mov ds,ax
mov es,ax    

lea si,a1+4
lea di,a2

std
mov cx,5  
move:
    movsb
    add di,2
    loop move
 
lea dx,a2
mov ah,9
int 21h
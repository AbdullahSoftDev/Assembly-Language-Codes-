
include 'emu8086.inc'
.stack 100h
.data
.code
mov ax,'1'
mov bx,'2'
push ax
push bx

pop ax
mov dx,ax
mov ah,02h
int 21h
printn

pop bx
mov dx,bx
mov ah,02h
int 21h
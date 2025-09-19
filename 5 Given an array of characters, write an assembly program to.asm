
include 'emu8086.inc'
.stack 100h
.data
arr db 'a','b','d','u','l','l','a','h'
.code
mov ax,@data
mov ds,ax

lea si,arr
mov cx,8
l1:
mov dl,[si]
sub dl,32
mov ah,2
int 21h
inc si
loop l1
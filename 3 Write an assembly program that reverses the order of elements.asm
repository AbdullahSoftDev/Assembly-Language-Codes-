
include 'emu8086.inc'
.stack 100h
.data
arr db 5,4,3,2,1
.code
mov ax,@data
mov ds,ax

lea si,arr+4
mov cx,5
l1:
mov dl,[si]
add dl,48
mov ah,2
int 21h
dec si
loop l1
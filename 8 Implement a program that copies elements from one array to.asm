
include 'emu8086.inc' 
.stack 100h
.data
arr1 db 'hello abdullah$'
arr2 db 15 dup('$')
.code
mov ax,@data
mov ds,ax
mov es,ax

lea si,arr1
lea di,arr2
cld
mov cx,15
l1:  
movsb
loop l1

lea dx,arr2
mov ah,09h
int 21h
mov ah,4ch
int 21h
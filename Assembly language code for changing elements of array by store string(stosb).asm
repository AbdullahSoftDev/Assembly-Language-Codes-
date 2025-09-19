
include 'emu8086.inc'
.stack 100h
.data
a1 db 'Hellu !$'
.code
mov ax,@data
mov ds,ax
mov es,ax    

lea di,a1

cld      
mov al,'A'
stosb
stosb

mov cx,6
lea di,a1
l1:
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    loop l1
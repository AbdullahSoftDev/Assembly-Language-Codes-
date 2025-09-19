
include 'emu8086.inc'
.stack 100h
.data
a1 db 'HellO!$'
.code
mov ax,@data
mov ds,ax
mov es,ax    

lea si,a1

cld      
lodsb
mov dl,al
mov ah,2
int 21h
lodsb  
mov dl,al
mov ah,2
int 21h
printn
mov cx,6
lea di,a1
l1:
    mov dl,[di]
    mov ah,2
    int 21h
    inc di
    loop l1
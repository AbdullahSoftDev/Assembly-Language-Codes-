

include 'emu8086.inc'
.stack 100h
.data
.code
mov al,1
push ax
mov bl,2
push bx
mov cl,3
push cx 
mov dl,4
push dx


pop ax 
add al,48
mov dl,al
mov ah,2
int 21h
pop ax   
add al,48
mov dl,al
mov ah,2
int 21h
pop ax 
add al,48
mov dl,al
mov ah,2
int 21h
pop ax   
add al,48
mov dl,al
mov ah,2
int 21h

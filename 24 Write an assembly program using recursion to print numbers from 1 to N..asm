
include 'emu8086.inc'
.stack 100h
.data
str db 'Enter nth value: $'
v db 1
.code 
mov ax,@data
mov ds,ax 
lea dx,str
mov ah,09h
int 21h
mov ah,1
int 21h
sub al,48
mov bl,al
mov cx,bx
call flow
mov ah,4ch
int 21h

flow proc
    cmp cx,0
    je d
    mov dl,v
    add dl,48
    mov ah,2
    int 21h
    dec cx
    inc v
    call flow
    
    d:
    ret
    

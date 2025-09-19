
include 'emu8086.inc'
.stack 100h
.data   
n db 5
f dw ?
.code            
mov ax,@data
mov ds,ax

mov ax,1
mov bl,n
call fact
mov f,ax
mov dx,f
mov ah,2
int 21h
mov ah,4
int 21h 

fact proc
    cmp bx,1
    je goback
    push bx
    dec bx
    call fact
    pop bx
    mul bx
    goback:
    ret
    fact endp
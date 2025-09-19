

include 'emu8086.inc'
.stack 100h
.data
msg db 'Values are: $'
arr db 1,2,3,4,5,6
.code
mov ax,@data
mov ds,ax

mov ah,09h
int 21h
lea dx,msg
lea si,arr

mov cx,6
    l1:
    mov dx,[si+5]
    add dl,48
    mov ah,02h
    int 21h
    dec si
    mov dl,32
    int 21h
    mov ah,02h
    int 21h
    loop l1
mov ah,4ch
int 21h
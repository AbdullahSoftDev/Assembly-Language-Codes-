include 'emu8086.inc'
.stack 100h
.data
arr db 6 dup(?)
.code
    mov ax,@data
    mov ds,ax
    
    lea si,arr
    mov cx,6
l1:
    mov ah, 01h
    int 21h
    mov [si],al
    push ax
    inc si 
    loop l1

    mov cx,6
    printn
l2:
    pop ax
    mov dx,ax
    mov ah,02h
    int 21h
    loop l2
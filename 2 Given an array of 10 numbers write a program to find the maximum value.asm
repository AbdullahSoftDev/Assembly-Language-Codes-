
include 'emu8086.inc'
.stack 100h
.data
arr db 1,5,3,6,7,8,1,0,4,2,9
.code
mov ax,@data
mov ds,ax
      
    lea si,arr
    mov cx,10
    mov al,[si]
    inc si
L2:
    mov bl,[si]
    cmp al,bl
    jg n
    mov al,bl

n:
    inc si
    loop L2  
    
    mov dl,al
    add dl,48
    mov ah,02h
    int 21h 
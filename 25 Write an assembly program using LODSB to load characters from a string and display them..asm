

include 'emu8086.inc'
.stack 100h
.data
arr db 'I am human$'
.code
    mov ax,@data
    mov ds,ax
     
    lea si,arr
       
cld    
find:
    lodsb   
    cmp al,'$'
    je d
    mov dl,al
    mov ah,2
    int 21h
    jmp find

d:
    mov ah,4ch
    int 21h


include 'emu8086.inc'
.stack 100h
.data
arr db 50 dup('$')
.code
mov ax,@data
mov ds,ax
mov es,ax

lea di,arr
cld 
    store:
    mov ah,1
    int 21h
    cmp al,13
    je d
    stosb
    jmp store
d:          
printn    
lea dx,arr
mov ah,9
int 21h

include 'emu8086.inc'
.stack 100h
.data
    fname db 'First.txt',0
    fhandle dw ?
    b db 100 dup<'$'>
.code
    mov ax,@data
    mov ds,ax
    
    mov ah,3ch 
    lea dx,fname
    mov cl,0
    int 21h 
    mov fh,ax
    
    mov ah,3eh
    mov bx,fh
    int 21h   
    
    mov ah,4ch
    int 21h      
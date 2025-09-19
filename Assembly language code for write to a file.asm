
include 'emu8086.inc'
.stack 100h
.data
    fname db 'First.txt',0
    fh dw ?
    b db 100 dup('$')
.code
    mov ax,@data
    mov ds,ax
    
    mov ah,3dh 
    lea dx,fname
    mov al,2
    int 21h
    jc ferror 
    mov fh,ax
    print 'Enter Data: '
    
    mov si,0
    mov cx,0
again:
    mov ah,1
    int 21h
    cmp al,13
    je write
    mov b[si],al
    inc si
    inc cx
    jmp again
write:
    mov ah,40h
    mov bx,fh 
    mov cx,si
    lea dx,b 
    int 21h
    
    mov ah,3eh
    mov bx,fh
    
    ferror:
    print 'Error'
    
    exit:
    mov ah,4ch
    int 21h
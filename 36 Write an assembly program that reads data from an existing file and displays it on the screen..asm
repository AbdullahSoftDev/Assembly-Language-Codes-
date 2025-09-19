
include 'emu8086.inc'
.stack 100h
.data
    fname db 'First.txt',0
    fhandle dw ?
    b db 100 dup('$')
.code
    mov ax,@data
    mov ds,ax
    
    mov ah,3dh 
    lea dx,fname
    mov al,0
    int 21h
    jc error 
    mov fhandle,ax
                                
    mov ah,3fh
    lea dx,b
    mov cx,100
    mov bx,fhandle
    int 21h
    jc error
    
    lea dx,b
    mov ah,09h
    int 21h
    
    mov ah,3eh
    mov bx,fhandle
    int 21h
             
exit:
    mov ah,4ch
    int 21h
    
error:
    print 'Error'
    mov ah,4ch
    int 21h      
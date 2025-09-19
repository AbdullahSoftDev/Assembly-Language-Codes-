include 'emu8086.inc'

.stack 100h
.data
    fname db 'First.txt', 0
    fhandle dw ?
    b db 'I AM ABDULLAH$'
    len db 13

.code
    mov ax,@data
    mov ds,ax
    mov ah,3dh
    lea dx,fname
    mov al,0x01
    int 21h
    jc error
    mov fhandle,ax

    cmp fhandle,0
    jl error
    mov ah,42h
    mov bx,fhandle
    mov cx,0
    mov dx,0
    mov al,2 
    int 21h
    jc error

    mov ah,40h
    lea dx,b
    mov cl,[len]
    mov bx,fhandle
    int 21h
    jc error

    mov ah,3eh
    mov bx,fhandle
    int 21h

exit:
    mov ah, 4ch
    int 21h

error:
    print ' Error '
    jmp exit
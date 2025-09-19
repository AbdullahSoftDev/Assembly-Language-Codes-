include 'emu8086.inc'
.stack 100h
.data
ar db 5 (dup?)
.code
main:
    mov ax,@data
    mov ds,ax

    lea si,ar
    mov cx,5
l1:
    mov ah,1
    int 21h
    mov [si],al
    inc si
    loop l1

    mov ah,1
    int 21h
    lea si,ar
    mov cx,5 
l2:
    cmp [si],al 
    je f     
    inc si       
    loop l2  
    nf:
    print ' Not found'
    jmp e

    f:
    print ' Found'
    jmp e

e:
mov ah,4ch
int 21h
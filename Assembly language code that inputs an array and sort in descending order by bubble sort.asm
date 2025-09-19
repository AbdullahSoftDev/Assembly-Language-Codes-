include 'emu8086.inc'
.stack 100h
.data
    arr db 10 dup(?)
    n db ?
.code
    mov ax,@data
    mov ds,ax

    print ' Enter numbers: '

    lea si,arr
    mov cx,10
l1:
    mov ah,01h
    int 21h
    mov [si],al
    inc si
    loop l1

    lea si,arr
    mov cx,10
    dec cx
s:
    mov di,si
    inc di
    mov bx,cx
l2:
    mov al,[si]
    cmp al,[di]
    jge skip
    mov dl, [di]
    mov [di],al
    mov [si],dl
skip:
    inc di
    dec bx
    jnz l2
    inc si
    loop s  
    
    printn
    print ' Sorted array in decending order: '

    lea si,arr
    mov cx,10
d:
    mov dl,[si]
    mov ah,02h
    int 21h
    mov dl,' '
    int 21h
    inc si
    loop d

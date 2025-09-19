include 'emu8086.inc'
.stack 100h
.data
    arr db 10 dup(?)
    n db ?
.code
main proc
    mov ax, @data
    mov ds, ax

    print ' ENter numbers: '

    lea si, arr
    mov cx, 10
l1:
    mov ah, 01h
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
    jle skip
    mov dl, [di]
    mov [di], al
    mov [si], dl
skip:
    inc di
    dec bx
    jnz l2
    inc si
    loop s  
    
    print 10
    print 13
    print ' Sorted array in ascending order: '

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

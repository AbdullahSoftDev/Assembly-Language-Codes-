

include 'emu8086.inc'
.stack 100h
.data
arr1 db '4','5','6','7','8'
arr2 db 5 dup(0)
.code
main:
    mov ax,@data
    mov ds,ax
    print 'Enter a value: '
    mov ah,01h
    int 21h
    mov bl,al
    lea si,arr1
    mov cx,5

l1:
    mov al,[si]
    cmp al,bl
    jz f

    inc si
    loop l1
f:
    print 10
    print 13
    test bl,1
    jnz a
    jz b
    a:
        print ' Odd'
        print 10
        print 13
        lea si,arr2
        mov [si+0],bl
        mov [si+1],'0'
        mov [si+2],bl
        mov [si+3],'0'
        mov [si+4],bl
        jmp d
    b:
        print ' Even'
        print 10
        print 13
        lea si,arr2
        mov [si+0],'0'
        mov [si+1],bl
        mov [si+2],'0'
        mov [si+3],bl
        mov [si+4], '0'
        jmp d        
d:
    lea si,arr2
    mov cx,5
l2:
    mov dl,[si]
    mov ah,02h
    int 21h
    inc si
    loop l2
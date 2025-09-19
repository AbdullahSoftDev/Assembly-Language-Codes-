



;question 1 first element of array
include 'emu8086.inc'
.stack 100h
.data
msg db ' Values are: $'
arr db 4 (dup?) 
.code
    mov ax, @data
    mov ds, ax

    lea dx, msg
    mov ah, 09h
    int 21h
    
    lea si, arr
    mov cx, 4  
l1: 
    mov ah, 01h
    int 21h    
    mov [si], al
    inc si      
    loop l1     
    lea si, arr  
    mov dl, [si]
    print 10
    print 13
    print ' First element of array is: '  
    mov ah, 02h  
    int 21h      

    mov ah, 4ch
    int 21h
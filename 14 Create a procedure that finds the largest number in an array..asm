
include 'emu8086.inc'
.stack 100h
.data
arr db 7 (dup?)
.code
mov ax,@data
mov ds,ax
 
call high
mov ah,4ch
int 21h

high proc
    lea si,arr
    print ' Enter values of array: '
    mov cx,7
    l1:
        mov ah,1
        int 21h
        mov [si],al
        inc si
        loop l1
          
    lea si,arr
    mov al,[si]
    inc si
    mov cx,6
    l2:       
        mov bl,[si]
        cmp al,bl
        jg h     
        mov al,bl
    h:
        inc si
        loop l2
        
    printn
    print ' Highest = '
    mov dl,al
    mov ah,2
    int 21h    
    high endp  
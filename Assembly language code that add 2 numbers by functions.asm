include 'emu8086.inc'

.stack 100h
.data
.code
main proc        
    print 'Enter first number: '
    mov ah,01h
    int 21h
    mov bl,al
    call newline
    
    print 'Enter second number: '
    mov ah,01h
    int 21h
    mov cl,al
    call newline
    
    call addd
    
    print 'Result: '
    mov dl,cl
    mov ah,02h
    int 21h
    
    mov ah, 4Ch
    int 21h
main endp

newline proc
    print 10
    print 13
    ret
newline endp

addd proc
    sub bl, 48
    sub cl, 48
    add cl, bl
    add cl, 48
    ret
addd endp

end main
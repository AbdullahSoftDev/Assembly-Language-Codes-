include 'emu8086.inc'

.stack 100h
.data
.code


newline proc
    print 10
    print 13
    ret
newline endp


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
    ;jmp j1:  uncoditional jump
    
    print 'Enter third number: '
    mov ah,01h
    int 21h
    mov dl,al
    call newline
    
    cmp bl,cl
    cmp dl,bl
    cmp cl,dl
    
    
    
    jz equal ;conditional jump
    print 'both numbers are not equal'
    mov ah,4ch
    int 21h
    
    equal:
    print 'both numbers are equal'
    ;j1:
    mov ah,4ch
    int 21h
    
main endp


end main
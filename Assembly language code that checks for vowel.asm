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
    print 'Enter consonant : '
    mov ah,01h
    int 21h
    cmp al,'A'
    je equal
    cmp al,'a'
    je equal
    cmp al,'e'
    je equal
    cmp al,'E'
    je equal
    cmp al,'i'
    je equal
    cmp al,'I'
    je equal
    cmp al,'o'
    je equal
    cmp al,'o'
    je equal
    cmp al,'u'
    je equal
    cmp al,'U'
    call newline
    
    print 'not vowel'
    mov ah,4ch
    int 21h 
    equal:
    call newline
    print ' vowel'
    mov ah,4ch
    int 21h
    
main endp


end main
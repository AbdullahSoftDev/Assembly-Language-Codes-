include Irvine32.inc
.data
yes byte "YES EVEN!", 0
no byte "NOT EVEN!", 0
.code
main proc
    call readint
    mov edx,0 
    mov ebx,2
    div ebx
    cmp edx,0
    je yess

    mov edx,offset no
    call writestring
    jmp finish

yess:
    mov edx,offset yes
    call writestring
finish:      
    ret
main endp
end main
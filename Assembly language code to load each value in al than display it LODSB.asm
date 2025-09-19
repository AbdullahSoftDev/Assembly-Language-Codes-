INCLUDE Irvine32.inc
.data
copy db "hello",0
msg db "Value of AL: ",0
.code
main proc
    mov esi, offset copy
    cld
    mov edx,offset msg
    call writestring
    lodsb
    call writechar
    call crlf
    lodsb
    mov edx,offset msg
    call writestring
    call writechar
    call crlf
    lodsb
    mov edx,offset msg
    call writestring
    call writechar
    call crlf
    lodsb
    mov edx,offset msg
    call writestring
    call writechar
    call crlf
    lodsb
    mov edx,offset msg
    call writestring
    call writechar
    call crlf


    exit
main ENDP
END main
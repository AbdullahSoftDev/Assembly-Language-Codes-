.stack 100h
.data
.code
main proc
    mov al, 'A'
    mov dl,al
    mov ah,02h
    int 21h
    ret                            
main endp
end main
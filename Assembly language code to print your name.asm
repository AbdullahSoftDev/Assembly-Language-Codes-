.stack 100h
.data
.code
main proc
    
    mov al,'A'
    mov dl,al
    mov ah,02h
    int 21h
    mov al,'B'
    mov dl,al
    mov ah,02h
    int 21h
    mov al,'D'
    mov dl,al
    mov ah,02h
    int 21h
    mov al,'U'
    mov dl,al
    mov ah,02h
    int 21h
    mov al,'L'
    mov dl,al
    mov ah,02h
    int 21h
    mov al,'L'
    mov dl,al
    mov ah,02h
    int 21h
    mov al,'A'
    mov dl,al
    mov ah,02h
    int 21h
    mov al,'H'
    mov dl,al
    mov ah,02h
    int 21h
    
    ret                            
main endp
end main
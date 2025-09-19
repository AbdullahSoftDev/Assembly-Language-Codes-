

;Code to multiply 3 three numbers
.stack 100h

.data

.code
    mov al,2
    mov bl,2
    mul bl
    mov cl,2
    mul cl    
    add al,48
    mov dl,al
    mov ah,2
    int 21h    
ret

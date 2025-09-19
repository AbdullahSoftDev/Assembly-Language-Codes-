

;Code to divide 3 three numbers
.stack 100h

.data

.code
    mov al,125
    mov bl,5
    div bl    
    add al,48
    mov dl,al
    mov ah,2
    int 21h    
ret



;987654321 print by loop

.stack 100h

.data
.code
    mov cx,10
    mov dl,57
L1:
    mov ah,2
    int 21h
    dec dl
loop L1:
    mov ah,4ch
    int 21h

ret





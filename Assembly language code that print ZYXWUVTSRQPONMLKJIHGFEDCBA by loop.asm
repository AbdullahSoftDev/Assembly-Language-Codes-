
;ZYXWUVTSRQPONMLKJIHGFEDCBA
.stack 100h

.data
.code
mov cx,26
mov dl,'Z'
L1:
mov ah,2
int 21h
dec dl
loop L1
mov ah,4ch
int 21h

ret





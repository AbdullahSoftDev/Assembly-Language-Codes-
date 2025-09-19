
;print zyxwvutsrqponmlkjihgfedcba
.stack 100h

.data

.code

mov cx,26
mov dl,122
    L1:
      mov ah,02h
      int 21h
      dec dl
      loop L1
      mov ah,4ch
      int 21h

ret





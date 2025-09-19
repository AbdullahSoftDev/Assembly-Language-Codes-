
;0123456789 print 
.stack 100h

.data
.code
mov cx,10
mov dl,48
L1:
mov ah,2
int 21h
inc dl
loop L1:
mov ah,4ch
int 21h

ret





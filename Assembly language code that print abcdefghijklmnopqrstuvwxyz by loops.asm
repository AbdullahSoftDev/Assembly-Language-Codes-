                                                                       
 
 ;print abcdefghijklmnopqrstuvwxyz                                                                      
.stack 100h

.data
.code
mov cx,26
mov dl,97
L1:
mov ah,2
int 21h
inc dl
loop L1:
mov ah,4ch
int 21h

ret






.stack 100h

.data

.code
   mov ah,1
   int 21h 
   mov bl,al
   mov ah,1
   int 21h  
   sub bl,al
   mov ah,1
   int 21h
   sub bl,al
   add bl,96
   mov dl,bl
   mov ah,2
   int 21h
    
ret





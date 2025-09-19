   
   
   ;Assembly language code to add 2 numbers
.stack 100h

.data

.code

    mov al,'4'
    mov bl,'5'
    add bl,al
    sub bl,30h
    mov dl,bl
    mov ah,02h
    int 21h
    
ret





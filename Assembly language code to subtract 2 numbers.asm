   
   
   ;Assembly language code to subtract 2 numbers
.stack 100h

.data

.code

    mov al,'3'
    mov bl,'5'
    sub bl,al
    add bl,48
    mov dl,bl
    mov ah,02h
    int 21h






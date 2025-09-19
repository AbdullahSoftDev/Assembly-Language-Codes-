
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.stack 100h
.data
.code
main proc
    mov al,'2'
    mov bl,'3'
    mov cl,'4'
    add bl,al
    add cl,bl
    sub cl,48
    sub cl,48
    mov dl,cl
    mov ah,02h
    int 21h
    
    


ret





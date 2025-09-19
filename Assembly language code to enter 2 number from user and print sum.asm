
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.stack 100h
.data
msg db 'Enter first number:$'
msg1 db 10,13,'Enter second number:$'
msg2 db 10,13,' Result:$'
.code
mov ax,@data
mov ds,ax       

mov ah,09h
lea dx, msg
int 21h  

mov ah,01h
int 21h
mov cl,al

mov ah,09h
mov dx,offset msg1
int 21h

mov ah,01h
int 21h
mov bl,al  

mov ah,09h
mov dx,offset msg2
int 21h

add bl,cl
sub bl,48
mov dl,bl
mov ah,02h 
int 21h

ret





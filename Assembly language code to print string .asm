
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.stack 100h
.data
my db 'My name is abdullah$'
.code
mov ax,@data
mov ds,ax               
mov dx,offset my
mov ah,09h
int 21h 
mov ax,01h
int 21h                         
ret





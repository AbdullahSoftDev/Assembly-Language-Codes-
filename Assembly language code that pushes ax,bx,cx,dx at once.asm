
include 'emu8086.inc'
.stack 100h
.data
.code
mov ax,'1'
mov bx,'1'
mov cx,'1'
mov dx,'1'
pusha
mov ax,'2'
mov bx,'2'
mov cx,'2'
mov dx,'2'
pusha
mov ax,'3'
mov bx,'3'
mov cx,'3'
mov dx,'3'
pusha
mov ax,'4'
mov bx,'4'
mov cx,'4'
mov dx,'4'
pusha  

popa
mov ah,02h
int 21h
popa
mov ah,02h
int 21h
popa
mov ah,02h
int 21h
popa
mov ah,02h
int 21h
popa
mov ah,4ch
int 21h

 
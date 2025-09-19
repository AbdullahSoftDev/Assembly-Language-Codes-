include 'emu8086.inc'
.stack 100h
.data
str1 db 'retaw eht rednu ma i$'
str2 db 50 dup('$')
.code
mov ax,@data
mov ds,ax
mov es,ax

lea si,str1+19
lea di,str2
std
mov cx,20
l1:
lodsb
cmp al,'$'
je d
stosb
add di,2
loop l1

d:
lea dx,str2
mov ah,9
int 21h
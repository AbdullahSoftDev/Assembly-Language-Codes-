

include 'emu8086.inc'
.stack 100h
.data
str db 'hello i am bablu$'
.code
mov ax,@data
mov ds,ax
mov es,ax                    


lea si,str
cld
find:
lodsb
cmp al,'$'
je d
sub al,32
stosb
jmp find

d:
lea dx,str
mov ah,9
int 21h



include 'emu8086.inc'
.stack 100h
.data
.code 
print ' Enter first number: '
mov ah,1
int 21h
mov bl,al
printn
print ' Enter second number: '
mov ah,1
int 21h
mov cl,al
printn
print ' Sum:'
add bl,cl
mov dl,bl
sub dl,48
mov ah,2
int 21h
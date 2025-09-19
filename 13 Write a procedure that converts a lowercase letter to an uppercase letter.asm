
include 'emu8086.inc'
.stack 100h
.data
.code   
print ' Enter a small alphabet: '
mov ah,1
int 21h
mov bl,al                     
printn

call c
c proc   
print ' '   
mov dl,bl
mov ah,2 
int 21h
print ' = '
sub dl,32  
mov ah,2
int 21h
c endp
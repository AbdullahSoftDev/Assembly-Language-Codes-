
include 'emu8086.inc'
.stack 100h
.data
.code
print ' Enter a number: '
mov ah,1
int 21h
mov bl,al
sub bl,48
printn

call sq  
sq proc    
mov al,bl
mul bl
mov bl,al
mov dl,bl
add dl,48
print ' Square is: '
mov ah,2
int 21h
    sq endp
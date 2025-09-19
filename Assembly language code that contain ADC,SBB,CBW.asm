

include 'emu8086.inc'
.stack 100h
.data
.code
mov al,1
mov bl,3
stc
adc al,bl
add al,48
mov dl,al
mov ah,02h
int 21h

mov al,7
mov bl,5
stc
sbb al,bl
add al,48
mov dl,al
mov ah,02h
int 21h 

mov al,-5
cbw      
add al,48

mov dl,al
mov ah,02h
int 21h
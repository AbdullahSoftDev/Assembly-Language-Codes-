
include 'emu8086.inc'
.stack 100h
.data
v1 db ?
v2 db ?
.code
     
mov ax,@data
mov ds,ax

mov ah,01
int 21h
mov cl,al
mov v1,al

mov ah,01
int 21h
mov bl,al
mov v2,al

stc
adc bl,cl
mov al,v1
mov dl,v2
cmp al,dl
ja above

print 'First number falls below second'  
jmp e

above:
print 'First number falls above second'
jmp e

e:
mov ah,4ch
int 21h                
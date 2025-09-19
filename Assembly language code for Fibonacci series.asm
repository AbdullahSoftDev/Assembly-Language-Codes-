
include 'emu8086.inc'
.stack 100h
.data  
.code   
mov al,0
mov bl,1
mov cx,5 
l1:      
  add al,bl
  mov dl,al
  add dl,48
  mov ah,2
  int 21h
  sub dl,48
  mov al,bl
  mov bl,dl
  loop l1
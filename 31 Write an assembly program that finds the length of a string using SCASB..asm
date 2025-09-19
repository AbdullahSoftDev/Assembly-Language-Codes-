include 'emu8086.inc'
.stack 100h    
.data
arr db 'EMU8086$'
.code
mov ax,@data
mov ds,ax
mov es,ax

mov bl,0
lea si,arr
cld
  c:
  mov al,'$'
  scasb
  jz d
  inc bl
  call c
  
  d:
  print 'Length of string is: '
mov dl,bl
add dl,48
mov ah,2
int 21h
mov ah,4ch
int 21h


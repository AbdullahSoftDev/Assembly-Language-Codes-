

include 'emu8086.inc'
.stack 100h
.data
ar db 5 (dup?)
.code
mov ax,@data
mov ds,ax

lea si,ar 

mov cx,5
l1:
mov ah,01h
int 21h
mov [si],al
inc si
loop l1

lea si,ar
mov al,[si]
mov cx,4
l2:
mov bl,[si+1]
cmp al,bl
jz e
jnz c
c:
inc si
loop l2

e: 
print 'Common element found is: '
mov dl,bl
mov ah,2
int 21h
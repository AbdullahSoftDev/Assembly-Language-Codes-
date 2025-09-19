
include 'emu8086.inc'
.stack 100h
.data
a db 1,1,1,1,1
t dw 0
.code
mov ax,@data
mov ds,ax

mov cx,5
lea si,a
l1:
cbw      
mov al,[si]
mov dl,al
add dl,48
mov ah,2
int 21h
sub dl,48
add t,dx
inc si
loop l1 
printn
print 'Sum = '
mov dx,t
add dl,48
mov ah,2
int 21h
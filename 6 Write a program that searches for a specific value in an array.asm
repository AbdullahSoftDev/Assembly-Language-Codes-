
include 'emu8086.inc'
.stack 100h
.data
arr db 1,8,3,4,6,7,0,5,9,2
n db 0
.code
mov ax,@data
mov ds,ax

lea si,arr
print 'Enter a value you want to search: '
mov ah,1
int 21h
mov bl,al
sub bl,48
mov cx,10
l1:
cmp bl,[si]
je f
inc n
inc si
loop l1

f:
print 'found at '
mov dl,n
add dl,48
mov ah,2
int 21h
mov ah,4ch
int 21h


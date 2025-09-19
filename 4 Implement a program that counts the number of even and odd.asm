
include 'emu8086.inc'
.stack 100h
.data
arr db 5,2,5,6,1,3,9,4
e db 0
o db 0
.code
mov ax,@data
mov ds,ax

lea si,arr
mov cx,8
l1:
mov bl,[si]
test bl,1
je ev
inc o 
inc si
loop l1
jmp d
ev:
inc e
inc si
loop l1

d:
print ' Even are: '
mov dl,e
add dl,48
mov ah,2
int 21h

print ' odd are: '
mov dl,o
add dl,48
mov ah,2
int 21h
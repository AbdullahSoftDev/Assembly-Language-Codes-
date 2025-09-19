include 'emu8086.inc'

.stack 100h
.data
a1 db 'Hello$'
a2 db 'Healo$'

.code
mov ax,@data
mov ds,ax
mov es,ax    

lea si,a1
lea di,a2

cld
mov cx,5
l1:
cmpsb
jnz nott 
loop l1

print 'Strings are equal'
jmp exittt

nott:
print 'Strings are not equal'

exittt:
mov ah,4ch
int 21h
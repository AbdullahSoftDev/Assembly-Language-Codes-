

include 'emu8086.inc'
.stack 100h
.data
.code
mov ah,01h
int 21h
mov bl,al
mov al,'1'

cmp bl,al

jz equal:

print 'not equal'
mov ah,4ch
int 21h

equal:
print 'equal'
mov ah,4ch
int 21h
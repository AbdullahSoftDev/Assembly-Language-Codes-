include 'emu8086.inc'
.stack 100h
.data
.code
print 'enter a digit:'
mov ah,01h
int 21h
mov bl,al
mov al,'0'
cmp bl,al
jg positive
jl negative
jz zero

positive:
print 'positive'
print 10
print 13
mov ah,4ch
int 21h
negative:
print 'negative'
print 10
print 13
mov ah,4ch
int 21h
zero:
print 'zero'
print 10
print 13
mov ah,4ch
int 21h

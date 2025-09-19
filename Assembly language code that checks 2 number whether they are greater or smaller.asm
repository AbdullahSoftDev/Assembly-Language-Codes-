


include 'emu8086.inc'
.stack 100h
.data
.code
print 'Enter the number you want to check: '
mov ah,01h
int 21h
mov bl,al
print 10
print 13
print 'Enter the number by which you want to check first number: '
mov ah,01h
int 21h
cmp al,bl
jg greater:
jl smaller:
jz equal:

greater:
print 10
print 13
print 'Number is greater'
mov ah,4ch
int 21h
smaller:
print 10
print 13
print 'Number is smaller'
mov ah,4ch
int 21h
equal:
print 10
print 13
print 'Number is equal'
mov ah,4ch
int 21h

ret








include 'emu8086.inc'
.stack 100h
.data
my1 db ?
my2 db ?
my3 db ?
.code
mov ax,@data
mov ds,ax
print 'Enter first number: '
mov ah,01h
int 21h
mov my1,al
print 10
print 13
print 'Enter second number: '
mov ah,01h
int 21h
mov my2,al
print 10
print 13
print 'Enter third number: '
mov ah,01h
int 21h
mov my3,al
print 10
print 13

mov bl,my2
cmp my1,bl
jg greater1:

mov cl,my3
cmp my2,cl
jg greater2:

mov dl,my1
cmp my3,dl
jg greater3:

greater1:
print 10
print 13
print '1st Number is greater'
mov ah,4ch
int 21h
greater2:
print 10
print 13
print '2nd Number is greater'
mov ah,4ch
int 21h
greater3:
print 10
print 13
print '3rd Number is greater'
mov ah,4ch
int 21h
ret





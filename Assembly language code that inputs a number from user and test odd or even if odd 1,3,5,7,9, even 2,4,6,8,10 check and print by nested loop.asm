

include 'emu8086.inc'
.stack 100h
.data
.code

print ' Enter a value: '
mov ah,01h
int 21h
mov cl,al

printn
test cl,1
je even

print ' Odd '
printn
mov ax,'1'
mov bx,1
mov cx,5
l1:
push cx
mov cx,1    

    ll1:
    mov dx,ax
    mov ah,2
    int 21h
    loop ll1
    printn
inc bx
inc ax
inc ax
pop cx
loop l1
jmp e 
   
even:
print ' Even'
printn
mov ax,'2'
mov bx,1
mov cx,5 
l2:
push cx
mov cx,1
    ll2:
    mov dx,ax
    mov ah,2
    int 21h
    loop ll2
printn 
inc bx
inc ax
inc ax
pop cx
loop l2
jmp e

e:
mov ah,4ch
int 21h
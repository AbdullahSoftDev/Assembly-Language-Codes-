
include 'emu8086.inc'
.stack 100h
.data 
v db 0
.code
print 'Enter number:'
mov ah,1
int 21h 
sub al,48
mov bl,al
mov v,al
printn
print 'Enter power:'
mov ah,1
int 21h  
sub al,48
mov cl,al
call power 

mov dl,bl
add dl,48
mov ah,2
int 21h
mov ah,4ch
int 21h

power proc
    cmp cl,1
    je d
    mov al,bl
    mul v
    mov bl,al
    dec cl
    call power
    
    d:
    ret
        
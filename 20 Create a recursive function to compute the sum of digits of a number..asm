
include 'emu8086.inc'
.stack 100h
.data   
v db 0
.code 
mov ax,@data
mov ds,ax
print 'Enter a number: '
mov ah,1
int 21h  
sub al,48
mov bl,al

printn
print 'Sequence: '
call sum

sum proc
    add v,bl
    mov dl,bl
    add dl,48
    mov ah,2
    int 21h
    dec bl 
    cmp bl,0
    je d
    call sum
    
    d:
    printn
    print 'Total:'
    mov dl,v
    add dl,48
    mov ah,2
    int 21h
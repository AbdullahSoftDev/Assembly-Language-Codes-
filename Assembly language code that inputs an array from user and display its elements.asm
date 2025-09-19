

include 'emu8086.inc'
.stack 100h
.data
msg db ' Entered values are: $'
arr db 5 dup(?)
.code
mov ax,@data
mov ds,ax

lea si,arr
mov cx,5   
print ' Enter values of array: '
in1:        
    mov ah,01h
    int 21h
    mov [si],al
    inc si
    loop in1
       
print 10
print 13       
       
mov ah,09h
lea dx,msg
int 21h
         
mov cx,5
lea si,arr
l1:
mov dx,[si]
mov ah,02h
int 21h
inc si
loop l1

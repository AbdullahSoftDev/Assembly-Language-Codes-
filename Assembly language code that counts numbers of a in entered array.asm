

;count q3 

include 'emu8086.inc'
.stack 100h
.data
msg db ' Entered values are: $'
arr db 5 dup(?)
var db 0
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
      
lea si,arr
mov cx,5     
in2:       
    mov al,[si]
    cmp al,'a'
    je vpp
    jne c
    
    vpp:
    inc bl
     
    c:
    inc si
    loop in2
    
mov var,bl             
mov dl,var
add dl,48
mov ah,02h
int 21h 
  
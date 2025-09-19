



;low q5
include 'emu8086.inc'
.stack 100h
.data
msg db ' Enter values of array: $'
msg1 db 10,13, ' Lowest value in array is: $'
arr db 5 (dup?)
.code
mov ax,@data
mov ds,ax

mov ah,09h
int 21h  
lea dx,msg
          
lea si,arr
mov cx,5
  l1:
    mov ah,01h
    int 21h
    mov [si],al
    inc si
loop l1
          
    mov ah,09h 
    lea dx,msg1
    int 21h  
          
    lea si,arr
    mov cx,4
    mov al,[si]
    inc si
L2:
    mov bl,[si]
    cmp al,bl
    jl n
    mov al,bl

n:
    inc si
    loop L2  
    
    mov dl,al
    mov ah,02h
    int 21h 
    
mov ah,4ch
int 21h




                  
                                   
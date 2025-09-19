include 'emu8086.inc'
.stack 100h
.data      
arr db 5 dup(?) 
msg1 db ' Enter values of array: $'
msg2 db ' Second highest number is: $'
i db 6
.code
mov ax,@data
mov ds,ax 

lea dx,msg1
mov ah,9
int 21h
 
lea si,arr    
mov cx,5
l1:    
    mov ah,1
    int 21h
    mov [si],al
    inc si
    loop l1

order1:
    mov cx,4
    lea si,arr
order:
    mov bl,[si]
    cmp [si+1],bl
    jl swap
    inc si
    loop order
    
    dec i
    cmp i,0 
    jg order1
    jmp show 
        
swap:          
    mov bl,[si]
    mov al,[si+1]
    mov [si],al
    mov [si+1],bl

    inc si
    loop order    

    dec i
    cmp i,0
    jg order1
    jmp show 
    
show:      
    printn  
    lea dx,msg2
    mov ah,9
    int 21h    
    lea si,arr
    mov al,[si+3]
    mov dl,al
    mov ah,2
    int 21h
    mov ah, 4ch
    int 21h
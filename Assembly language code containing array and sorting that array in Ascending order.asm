include 'emu8086.inc'
.stack 100h
.data      
arr db 7 dup(?) 
i db 6
.code
mov ax,@data
mov ds,ax 
lea si,arr    
mov cx,7
l1:    
    mov ah,1
    int 21h
    mov [si],al
    inc si
    loop l1

order1:
    mov cx,6
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
    mov cx, 7
    lea si, arr
    d:
    mov dl, [si]
    mov ah, 02h
    int 21h
    inc si
    loop d
    
    mov ah, 4ch
    int 21h
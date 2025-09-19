include 'emu8086.inc'

.stack 100h
.data
a1 db 'Burger!$'
msg1 db 'found at $'
msg2 db 'not found$'

.code
mov ax,@data
mov ds,ax
mov es,ax    

cld        

lea di,a1                          
mov al,'e'
mov bl,1
scasb   
jz f    
inc bl
scasb 
jz f    
inc bl
scasb 
jz f    
inc bl
scasb 
jz f    
inc bl
scasb 
jz f    
inc bl
scasb
jz f  
inc bl
lea dx,msg2
mov ah,9
int 21h
jmp exit

f:
lea dx,msg1
mov ah,9
int 21h

add bl,48
mov dl,bl
mov ah,2
int 21h

exit:
mov ah,4ch
int 21h

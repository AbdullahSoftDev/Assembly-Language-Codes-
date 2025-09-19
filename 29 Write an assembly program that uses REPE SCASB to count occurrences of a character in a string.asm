include 'emu8086.inc'
.stack 100h
.data
arr db 'abdullaa'
v db 0
.code
mov ax,@data
mov ds,ax
mov es,ax

cld       
lea si,arr
mov bl,0 
mov al,'a'
mov cx,8
mov v,cl
find:     
repe scasb
jcxz d    
inc bl   
jmp find 

d:       
sub v,bl
mov dl,v
add dl,48
mov ah,2
int 21h


include 'emu8086.inc'
.stack 100h
.data
arr db 'human$'
.code
    mov ax,@data
    mov ds,ax 
    mov es,ax
cld           
    lea si,arr  
    mov al,'m'
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
    
    f:
    print 'Found '
    mov dl,al
    mov ah,2
    int 21h   
    print ' At '
    add bl,48
    mov dl,bl
    mov ah,2
    int 21h
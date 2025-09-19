
include 'emu8086.inc'
.stack 100h
.data
    fname db 'First.txt',0
    fhandle dw ?
    b db 100 dup('$')
.code
    mov ax,@data
    mov ds,ax        
    print 'Press 1 to create a file!'
    printn
    print 'Press 2 to enter data in file!'
    printn
    print 'Press 3 to read data from file!'
    printn   
    
main1: 
    printn
    print 'Make your choice'
    mov ah,1
    int 21h
    mov bl,al
    cmp bl,'1'
    je create
    cmp bl,'2'
    je write
    cmp bl,'3'
    je read
    cmp bl,'0'
    je exit
    
create:   
    printn
    print 'File created!'
    printn
    mov ah,3ch 
    lea dx,fname
    mov cl,0
    int 21h 
    mov fhandle,ax
    printn
    print 'You want another transaction? 1 for yes and 0 for no'
    mov ah,1
    int 21h
    cmp al,'1'
    je main1 
    jmp exit
    
read:
    mov ah,3dh 
    lea dx,fname
    mov al,0
    int 21h  
    mov fhandle,ax
                                
    mov ah,3fh
    lea dx,b
    mov cx,100
    mov bx,fhandle
    int 21h
    
    lea dx,b
    mov ah,09h
    int 21h
    
    mov ah,3eh
    mov bx,fhandle
    int 21h 
    printn
    print 'You want another transaction? 1 for yes and 0 for no'
    mov ah,1
    int 21h
    cmp al,'1'
    je main1
    jmp exit
    
write:
    mov ah,3dh 
    lea dx,fname
    mov al,2
    int 21h
    mov fhandle,ax 
    printn
    print 'Enter Data: '
    
    mov si,0
    mov cx,0
again:
    mov ah,1
    int 21h
    cmp al,13
    je write1
    mov b[si],al
    inc si
    inc cx
    jmp again
write1:
    mov ah,40h
    mov bx,fhandle 
    mov cx,si
    lea dx,b 
    int 21h
    
    mov ah,3eh
    mov bx,fhandle 
    printn
    print 'You want another transaction? 1 for yes and 0 for no'
    mov ah,1
    int 21h
    cmp al,'1'
    je main1 
    jmp exit 
    
    exit:
    mov ah,2
    int 21h
    
    
    
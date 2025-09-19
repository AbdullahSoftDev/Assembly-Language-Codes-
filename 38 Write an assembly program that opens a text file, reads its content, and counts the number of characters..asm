include 'emu8086.inc'
.stack 100h
.data
    fname db 'First.txt',0
    fhandle dw ?
    b db 100 dup('$')
    count dw 0

.code
    mov ax,@data
    mov ds,ax
    
    mov ah,3dh 
    lea dx,fname
    mov al,0
    int 21h
    jc error 
    mov fhandle,ax
                                
    mov ah,3fh
    lea dx,b
    mov cx,100
    mov bx,fhandle
    int 21h
    jc error
    
    lea si,b
    mov cx,ax
    mov di,0
    
loop_count:
    cmp cx,0
    je end_loop
    lodsb
    inc di
    loop loop_count
    
end_loop:
    mov [count],di
    
    mov dx,[count]  
    ;meine file me sirf 'hello rkha hua to 5 ayega'
    mov ah,02h
    int 21h
    
    mov ah,3eh
    mov bx,fhandle
    int 21h
             
exit:
    mov ah,4ch
    int 21h
    
error:
    print 'Error'
    mov ah,4ch
    int 21h
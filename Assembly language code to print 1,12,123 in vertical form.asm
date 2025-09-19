
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h



.stack 100h

.data

.code
main proc        
    mov dl, '1'
    mov ah, 02h        
    int 21h
    mov dl, 10         
    mov ah, 02h        
    int 21h            
    mov dl, 13         
    mov ah, 02h        
    int 21h
    mov dl, '1'        
    mov ah, 02h        
    int 21h
    mov dl, '2'        
    mov ah, 02h        
    int 21h
    mov dl, 10
    mov ah, 02h
    int 21h
    mov dl, 13
    mov ah, 02h
    int 21h
    mov dl, '1'
    mov ah, 02h
    int 21h
    mov dl, '2'        
    mov ah, 02h        
    int 21h
    mov dl, '3'        
    mov ah, 02h        
    int 21h
end main
ret






ret





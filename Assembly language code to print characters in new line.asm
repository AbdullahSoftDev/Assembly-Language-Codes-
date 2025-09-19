

.stack 100h

.data

.code
main proc        
    mov dl, '$'
    mov ah, 02h        
    int 21h
    mov dl, 10         
    mov ah, 02h        
    int 21h            
    mov dl, 13         
    mov ah, 02h        
    int 21h
    mov dl, '@'        
    mov ah, 02h        
    int 21h
    mov dl, 10
    mov ah, 02h
    int 21h
    mov dl, 13
    mov ah, 02h
    int 21h
    mov dl, 'A'
    mov ah, 02h
    int 21h
    mov dl, 10         
    mov ah, 02h        
    int 21h            
    mov dl, 13         
    mov ah, 02h        
    int 21h
    mov dl, 'B'        
    mov ah, 02h        
    int 21h
    mov dl, 10
    mov ah, 02h
    int 21h
    mov dl, 13
    mov ah, 02h
    int 21h
    mov dl, 'D'
    mov ah, 02h
    int 21h
    mov dl, 10         
    mov ah, 02h        
    int 21h            
    mov dl, 13         
    mov ah, 02h        
    int 21h
    mov dl, 'U'        
    mov ah, 02h        
    int 21h
    mov dl, 10
    mov ah, 02h
    int 21h
    mov dl, 13
    mov ah, 02h
    int 21h
    mov dl, 'L'
    mov ah, 02h
    int 21h
    mov dl, 10         
    mov ah, 02h        
    int 21h            
    mov dl, 13         
    mov ah, 02h        
    int 21h
    mov dl, 'L'        
    mov ah, 02h        
    int 21h
    mov dl, 10
    mov ah, 02h
    int 21h
    mov dl, 13
    mov ah, 02h
    int 21h
    mov dl, 'A'
    mov ah, 02h
    int 21h
    mov dl, 10         
    mov ah, 02h        
    int 21h            
    mov dl, 13         
    mov ah, 02h        
    int 21h
    mov dl, 'H'        
    mov ah, 02h        
    int 21h
    mov dl, 10
    mov ah, 02h
    int 21h
    mov dl, 13
    mov ah, 02h
    int 21h
end main
ret





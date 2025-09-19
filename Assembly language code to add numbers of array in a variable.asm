INCLUDE Irvine32.inc
.data
arr db 85, 42, 70, 35, 78, 55  
var dd 0                       
.code
main PROC
    mov esi, OFFSET arr  
    mov ecx, 6          
    mov eax,0
    mov var, 0          
l1:
    mov al,[esi]       
    cbw                 
    add var,eax        
    inc esi             
    loop l1             
    mov eax, var        
    call WriteDec       
    call CrLf           

    exit
main ENDP
END main

include Irvine32.inc
.data
.code
main proc
    mov ebx,1      
    call addn       
    ret
main endp
addn proc
    mov eax,ebx    
    call writeint   
    call crlf       
    inc ebx         
    cmp ebx,5      
    jl addn         
    ret
addn endp

end main
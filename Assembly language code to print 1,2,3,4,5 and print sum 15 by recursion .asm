include Irvine32.inc
.data
msg byte "=",0
var dd 0
.code
main proc
    mov ebx,1
    call addn 
    mov edx, offset msg
    call writestring
    mov eax,var
    call writeint
    ret
main endp
addn proc        
    cmp ebx,6
    jge finish
    mov eax,ebx    
    call writeint
    add var,eax   
    inc ebx
    call addn
    finish:
    ret
addn endp
end main
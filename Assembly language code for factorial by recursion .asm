Include Irvine32.inc
.data
.code
main proc
    mov eax,1
    mov ebx,6
    call fact

    call writeint
main endp
fact proc
    cmp ebx,1
    je go
    push ebx
    dec ebx
    call fact
    pop ebx
    mul ebx
go:
    ret
fact endp
end main 
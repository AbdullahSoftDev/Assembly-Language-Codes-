Include Irvine32.inc
.stack
.data
.code
main PROC
mov eax,10
mov ebx,2
add eax,ebx
call writeint
main endp
end main
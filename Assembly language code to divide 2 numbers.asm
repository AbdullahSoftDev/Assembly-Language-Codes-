Include Irvine32.inc
.stack
.data
.code
main PROC
mov eax,100
mov ebx,13
mov edx,0
div ebx
call writeint
main endp
end main
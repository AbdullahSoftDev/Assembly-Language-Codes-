Include Irvine32.inc
.stack
.data
.code
main PROC
mov eax,100
mov ebx,13
mul ebx
call DumpRegs
call writeint
main endp
end main
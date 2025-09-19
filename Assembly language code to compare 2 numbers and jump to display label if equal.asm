INCLUDE Irvine32.inc
.data
msg byte " Enter operand: ",0
notequal byte " Not equal! ",0
.code
main PROC
mov edx,offset msg
call writestring
call readint
mov ebx,eax
mov edx,offset msg
call writestring
call readint
cmp eax,ebx
je d
mov edx,offset notequal
call writestring
call crlf
jmp main
d:
mov eax,1
mov ebx,2
call writeint
mov eax,ebx
call writeint
    exit
main ENDP

END main
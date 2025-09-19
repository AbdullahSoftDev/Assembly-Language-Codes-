include Irvine32.inc
.data
msg1 db 'Enter a number: ',0
v dd 1
msg2 db 'Factorial: ',0
.code
main proc
mov edx,offset msg1
call writestring
call readint
mov ebx,eax

mov ecx,ebx
l1:
mov eax,v
mul ebx
mov v,eax
dec ebx
loop l1
mov edx,offset msg2
call writestring
mov eax,v
call writedec
exit
main endp
end main
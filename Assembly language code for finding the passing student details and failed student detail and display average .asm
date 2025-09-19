include irvine32.inc
.data
arr db 85,42,67,35,78,55,-1 ;total 357
msg1 byte " Pass students are: ",0
msg2 byte " Fail students are: ",0
msg3 byte " Average: ",0
p dd 0
f dd 0
v dd 0
.code
main proc
mov esi,offset arr
mov ecx,0
mov eax,0
mov v,0
mov bl,50
l1:
mov al,[esi]
cmp al,-1
cbw
je exitt
add v,eax
cmp al,bl
jge pass
inc f
jmp next

pass:
inc p
jmp next

next:
inc esi
inc ecx
cmp ecx,7
jge exitt
jmp l1

exitt:
mov edx,offset msg1
call writestring
mov eax,p
call writedec
call crlf
mov edx,offset msg2
call writestring
mov eax,f
call writedec
mov ecx,p
add ecx,f
mov eax,v
mov edx,0
mov ebx,ecx
div ebx
mov v,eax
call crlf
mov edx,offset msg3
call writestring
mov eax,v
call writedec
exit
main endp
end main
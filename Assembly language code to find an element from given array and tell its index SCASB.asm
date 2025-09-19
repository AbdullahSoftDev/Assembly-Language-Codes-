INCLUDE Irvine32.inc
.data
v dd 0
arr db "Hello my name is abdullah"
msg db "Value is found at: ",0
sea db "Enter value you want to search:",0
.code
main proc
	
cld
	mov edx,offset sea
	call writestring
	call readchar
	mov v,eax
	mov edi,offset arr
	mov ecx,25
	mov ebx,1
	l1:
	mov eax,v
	scasb
	jz f
	inc ebx
	loop l1
	exit
	f:
	call crlf
	mov edx,offset msg
	call writestring
	mov eax,ebx
	call writedec
	exit
main endp
end main
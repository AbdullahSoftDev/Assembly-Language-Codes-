INCLUDE Irvine32.inc
.data
v3 dd ?
v4 dd ?
.code
main PROC
call readint
mov ebx,eax
call readint
cmp ebx,eax
jb d
	mov v3,6
	mov eax,v3
	call writeint
	mov v4,7
	mov eax,v4
	call writeint
	exit
	d:
	mov eax,10
	mov v3,eax
	mov eax,v3
	call writeint
	exit
main ENDP
END main
INCLUDE Irvine32.inc
.data
string db "hello",0
copy db 5 dup(?)
.code
main proc
	mov esi,offset string+4
	mov edi, offset copy
std
	mov ecx,5
move:
	movsb
	add edi,2
	loop move
	mov edx,offset copy
	call writestring
main ENDP
END main
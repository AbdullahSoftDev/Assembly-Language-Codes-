INCLUDE Irvine32.inc
.data
string db "hello",0
copy db 5 dup(?)
.code
main proc
	mov esi,offset string
	mov edi, offset copy
cld
	mov ecx,5
	rep movsb
	mov edx,offset copy
	call writestring
main ENDP
END main
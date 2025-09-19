INCLUDE Irvine32.inc
.data
copy db "hello",0
.code
main proc
	mov edi, offset copy
cld
	mov al,'e'
	stosb
	inc edi
	stosb
	mov edx,offset copy
	call writestring
main ENDP
END main
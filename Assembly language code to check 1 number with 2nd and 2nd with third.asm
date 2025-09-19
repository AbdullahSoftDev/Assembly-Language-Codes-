INCLUDE Irvine32.inc
.data
str1 byte " Enter First number: ",0
str2 byte " Enter Second number: ",0
str3 byte " Enter Third number: ",0
str4 byte " First number is greater then second! ",0
str5 byte " Second number is greater then Third! ",0
v1 dd ?
v2 dd ?
v3 dd ?
.code
main PROC
mov edx,offset str1
call writestring
call readint
mov v1,eax
mov edx,offset str2
call writestring
call readint
mov v2,eax
mov edx,offset str3
call writestring
call readint
mov v3,eax
mov ebx,v2
cmp v1,ebx
jg d
jne endd
	d:
	call crlf
	mov edx,offset str4
	call writestring
	cmp ebx,v3
	jg display
	jne endd
	display:
	call crlf
	mov edx,offset str5
	call writestring
	call crlf
	mov eax,1
	call writeint
endd:
	exit
main ENDP
END main
include Irvine32.inc
.data
msg byte " Hello I am abdullah! ",0
.code
main proc
mov edx,offset msg
call writestring
call crlf
call writestring
main endp
end main
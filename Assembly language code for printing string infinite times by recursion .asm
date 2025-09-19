Include Irvine32.inc
.data
msg byte "value=", 0
.code
main proc
call infinite
main endp
infinite proc
mov edx,offset msg
call writestring
call crlf
call infinite
infinite endp
end main
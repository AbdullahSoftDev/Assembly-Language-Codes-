Include irvine32.inc
.data
msg1 byte " Enter value: ",0
msg2 byte " Value = ",0
.code
main proc
mov edx,offset msg1
call writestring
call readint
mov edx,offset msg2
call writestring
call writeint
main endp
end main
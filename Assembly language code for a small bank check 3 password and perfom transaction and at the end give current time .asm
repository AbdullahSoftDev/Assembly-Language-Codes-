Include Irvine32.inc
.data
	t systemtime <>
	msg1 byte " Enter Password: ",0
	msg2 byte " Successfully logged in!",0
	msg3 byte " Incorrect password! ",0
	msg4 byte " Please try again! ",0
	msg5 byte " Press 1 for deposit!",0
	msg6 byte " Press 2 for Withdraw!",0
	msg7 byte " Press 3 for Display Details!",0
	msg8 byte " Invalid choice! Please make a valid one!",0
	msg9 byte " Enter amount you wish to deposit: ",0
   msg10 byte " Enter amount you wish to Withdraw: ",0
   msg11 byte " Details: ",0
   msg12 byte " Your balance is: ",0
   msg13 byte " Enter your choice? (1,2,3) ",0
   msg14 byte " Do you want another transaction? (y/n) ",0
   msg15 byte " The time is: ",0
	pass dd 123
	 try dd 0 
 balance dd 4750
.code
main proc
	mov edx,offset msg1
	call writestring
	call readint
	mov ebx,eax
	cmp ebx,pass
	je next
	jne again
again:
	inc try
	cmp try,3
	je exitt
	mov edx,offset msg3
	call writestring
	call crlf
	mov edx,offset msg4
	call writestring
	call crlf
	mov edx,offset msg1
	call writestring
	call readint
	mov ebx,eax
	cmp ebx,pass
	je next
	jne again

exitt:
	exit

next:
	mov edx,offset msg2
	call writestring
	call crlf
choice:
	mov edx,offset msg5
	call writestring
	call crlf
	mov edx,offset msg6
	call writestring
	call crlf
	mov edx,offset msg7
	call writestring
	call crlf
	mov edx,offset msg12
	call writestring
	mov eax,balance
	call writeint
	call crlf
	mov edx,offset msg13
	call writestring
	call readint
	mov ebx,eax
	cmp ebx,1
	je depo
	cmp ebx,2
	je with
	cmp ebx,3
	je detail
	jne invalid
invalid:
	mov edx,offset msg8
	call writestring
	jmp choice
depo:
	mov edx,offset msg9
	call writestring
	call readint
	mov ebx,eax
	add balance,ebx
	mov edx,offset msg12
	call writestring
	mov eax,balance
	call writeint
	jmp another
with:
	mov edx,offset msg10
	call writestring
	call readint
	mov ebx,eax
	sub balance,ebx
	mov edx,offset msg12
	call writestring
	mov eax,balance
	call writeint
	jmp another
detail:
	mov edx,offset msg11
	call writestring
	mov eax,balance
	call writeint
	jmp another
another:
	call crlf
	mov edx,offset msg14
	call writestring
	call readchar
	mov ebx,eax
	cmp bl,'y'
	je choice
	cmp bl,'Y'
	je choice
	jne timee
timee:
	call crlf
	invoke GetLocalTime, addr t
	mov edx,offset msg15
	call writestring
    movzx eax, t.wHour
    call writedec
    mov al, ':'
    call writechar
    movzx eax, t.wMinute
    call writedec
    mov al, ':'
    call writechar
    movzx eax, t.wSecond
    call writedec
    call crlf
    exit
main endp
end main

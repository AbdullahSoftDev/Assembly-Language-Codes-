

.stack 100h
.data
.code
main proc
mov ah,01h   ;eg you add 8
int 21h
sub al,30h   ;ascii conversion
mov bl,al    ;moved to bl
mov ah,01h   ;eg you add 2
int 21h
sub al,30h   ;ascii conversion
mov cl,al    ;now 2 is in cl

mov al,bl    ;8 was in bl,now in al
mov ah,0     ;reset ah register in short ah register now have 0
div cl       ;divide cl which is equal to al=al/cl
add al,30h   ;ascii is now in hexa
mov dl,al    ;moved al to dl
mov ah,02h   ;print
int 21h
main endp
end main
ret
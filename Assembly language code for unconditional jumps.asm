
include 'emu8086.inc'
.stack 100h

.data

.code

;uncodional jump
print 'hello'
jmp hello:

print 'my name is abdullah'
mov ah,4ch
int 21h

hello:
print 'my name is BSCS'
mov ah,4ch
int 21h

ret





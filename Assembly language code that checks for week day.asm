

include 'emu8086.inc'
.stack 100h
.data
.code
print 'enter digit:'
mov ah,01h
int 21h 
cmp al,'1'
jz equal1
cmp al,'2'
jz equal2
cmp al,'3'
jz equal3
cmp al,'4'
jz equal4
cmp al,'5'
jz equal5
cmp al,'6'
jz equal6
cmp al,'7'
jz equal7

equal1:
call nl
print 'monday'
call en
equal2:
call nl
print 'tuesday'
call en
equal3:
call nl
print 'wednesday'
call en
equal4:
call nl
print 'thursday'
call en
equal5:
call nl
print 'friday'
call en
equal6:
call nl
print 'saturday'
call en
equal7:
call nl
print 'sunday'
call en

nl proc   
    print 10
    print 13
    ret
    nl endp
en proc
    mov ah,4ch
    int 21h
    ret
    en endp

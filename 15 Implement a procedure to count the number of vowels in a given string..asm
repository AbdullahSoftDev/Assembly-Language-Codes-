include 'emu8086.inc'
.stack 100h
.data
str db 'i am abdullah i am counting vowels$'
c db 0
.code
mov ax,@data
mov ds,ax  

; ans 60 ayega ascii me 60-48=12 vowels hain
call vowel
mov dl,c
add dl,48
mov ah,2
int 21h
mov ah,4ch
int 21h

vowel proc
    
    cld  
    lea si,str
fchar:
    lodsb
    cmp al,'$'
    je d
    cmp al,'a'
    je f
    cmp al,'e'
    je f
    cmp al,'i'
    je f
    cmp al,'o'
    je f
    cmp al,'u'
    je f
    jmp fchar
    
f:
    inc c
    jmp fchar
    
    d:
    ret
     
    vowel endp
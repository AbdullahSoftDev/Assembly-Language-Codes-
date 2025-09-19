include 'emu8086.inc'
.stack 100h
.data
.code

mov ah,01h
int 21h    

test al,1
je even:
            
print 'odd'        
mov ah,4ch
int 21h

even:
print 'even'
mov ah,4ch
int 21h
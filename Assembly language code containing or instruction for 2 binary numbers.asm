
include 'emu8086.inc'
.stack 100h
.data
.code
mov ax,01010101b
mov bx,10101010b

or ax,bx 
;it should be 11111111b

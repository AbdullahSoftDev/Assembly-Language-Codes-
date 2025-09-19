
include 'emu8086.inc'
.stack 100h
.data
.code
mov ax,01010101b
mov bx,01010000b

xor ax,bx 
;it should be 00000101b that is 50h

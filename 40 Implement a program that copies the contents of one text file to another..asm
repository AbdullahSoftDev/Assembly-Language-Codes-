include 'emu8086.inc'
.stack 100h
.data
    sourceFile DB 'source.txt', 0
    destFile DB 'dest.txt', 0    
    buffer DB 255 DUP(0)
    Source DW ?            
    Dest DW ?              
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    MOV AH, 3Dh    
    MOV AL, 0      
    LEA DX, sourceFile
    INT 21H
    JC EXIT         
    MOV Source, AX                                
    MOV AH, 3Ch    
    MOV CX, 0       
    LEA DX, destFile
    INT 21H
    JC CLOSE_SOURCE  
    MOV Dest, AX                    

READ_LOOP:
   
    MOV AH, 3Fh     
    MOV BX, Source
    MOV CX, 1        
    LEA DX, buffer
    INT 21H
    JC CLOSE_FILES  
    CMP AX, 0       
    JE CLOSE_FILES   
    MOV AH, 40h    
    MOV BX, Dest
    MOV CX, 1       
    LEA DX, buffer
    INT 21H
    JC CLOSE_FILES  
    JMP READ_LOOP   

CLOSE_FILES:
    MOV AH, 3Eh
    MOV BX, Dest
    INT 21H  
    printn
    print 'CLOSED DESTINATION FILE'
CLOSE_SOURCE:
    MOV AH, 3Eh
    MOV BX, Source
    INT 21H

EXIT:
    MOV AH, 4Ch
    INT 21H
MAIN ENDP
END MAIN
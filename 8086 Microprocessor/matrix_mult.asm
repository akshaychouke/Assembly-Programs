; this will multiply the 2x2 matrix
MOV [1400H],01H 
MOV [1401H],02H
MOV [1402H],03H
MOV [1403H],04H
MOV [1500H],05H
MOV [1501H],06H
MOV [1502H],07H
MOV [1503H],08H
MOV [1600H],00H
MOV [1601H],00H 
MOV [1602H],00H 
MOV [1603H],00H  
MOV BX,1400H ;memory location of 1st matrix 
MOV DI,1600H ; memory location where result will be stored
MOV BP,00H
MOV CL,02H
MOV DL,00H
A11:MOV SI,1500H ; memory location of 2nd matrix 
GO:MOV AL,00H
B11:MOV AL,[BX]
MUL [SI+BP]
ADD [DI+BP],AL
INC BP
CMP BP,02H
JB B11
MOV BP,00H
INC BX
INC SI
INC SI
LOOP GO
MOV CL,02H
INC DI
INC DI
MOV BP,00H
INC DL
CMP DL,02H
JB A11
HLT           ; halt!

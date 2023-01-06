MOV [1400H],01H 
MOV [1401H],02H
MOV [1402H],03H
MOV [1403H],04H
MOV [1500H],05H
MOV [1501H],06H
MOV [1502H],07H
MOV [1503H],08H 
MOV SI,1400H    ; location of 1st matrix
MOV DI,1500H    ; location of 2nd matrix
MOV CX,04H      ; order of the matrix
GO:MOV AL,[SI]
ADD [DI],AL
INC SI
INC DI
LOOP GO
HLT           ; halt!

;Result will be stored at the location of the second matrix


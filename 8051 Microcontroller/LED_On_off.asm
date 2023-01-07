org 0000h
Main: MOV p0, #01010101B
CALL Delay1
MOV p0, #10101010B
CALL Delay2
JMP Main
Delay1: MOV r0, #255
Here1: DJNZ r0, Here1
RET
Delay2: MOV r1, #255
Here: DJNZ r1, Here
RET
end

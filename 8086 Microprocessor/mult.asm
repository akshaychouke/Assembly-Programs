mov AL,12H
mov BL,04H   
mov CL,BL
mov [1400H],AL    
DEC CL
LOOP: ADD AL,[1400H]
DEC CL
JNZ LOOP
HLT
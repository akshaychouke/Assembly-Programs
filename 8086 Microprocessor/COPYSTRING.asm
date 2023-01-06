mov [01400h], 010h
mov [01401h], 002h
mov [01402h], 041h
mov [01403h], 083h
mov [01404h], 058h
mov [01405h], 072h
mov [01406h], 039h
mov [01407h], 046h 
mov [01408h], 053h
mov [01409h], 0a4h
mov [0140ah], 030h
mov [0140bh], 001h
MOV SI,01400H   ;the source memory location whose data is to be copied  
MOV DI,01500H   ; the destination memory location where data is to be copied 
MOV CL,0CH      ; the length of the string
CLD
REP MOVSB ; repeats untill string ends
HLT           ; halt!



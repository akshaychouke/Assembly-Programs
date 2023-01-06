MOV cx,08h      ; number whose factorial is to be find
MOV ax,0001h    ; the result will be stores in ax
l1:mul cx       ;it multiplies from 1 to the number whose fact is to be find
loop l1         ; repeats untill cx becomes zero
HLT             ; halt!



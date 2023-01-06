mov [1000], 01h
mov [1001], 02h
mov [1002], 03h
mov [1003], 04h
mov [2000], 01h
mov [2001], 02h
mov [2002], 03h
mov [2003], 04h  
mov si,1000h
mov di,2000h
mov cx,0004h
cld       ; clears the direction flag so that it can access the memory from lower to higher order
repe cmpsb ; repeats untill the strings ends or missmatched
HLT           ; halt!



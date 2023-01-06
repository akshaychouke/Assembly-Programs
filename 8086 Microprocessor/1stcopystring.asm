mov [01400h], 010h
mov [01401h], 002h
mov [01402h], 041h
mov [01403h], 083h
mov si,1400h ;source memory location
mov di,1500h ;destination memory location
mov cl,04h   ; couter to count the numbers of loops
L1:mov al,[si]
mov [di],al
inc si
inc di
dec cl
jnz L1
HLT           ; halt!



mov [01400h],010h
mov [01401h],002h
mov [01402h],041h
mov [01403h],083h
mov [01404h],058h
mov [01405h],072h
mov [01406h],039h
mov [01407h],046h
mov [01408h],053h
mov [01409h],0a4h
mov [0140ah],030h
mov [0140bh],001h  
mov bx,01400h
mov cl,00bh
mov al,[bx]  ; 
label: inc bx
cmp al,[bx]   
jb go
mov al,[bx]
go:loop label
HLT           ; halt!



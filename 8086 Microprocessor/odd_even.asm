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
mov si,01400h   ; location of source numbers
mov di,01500h   ; odd numbers will be stored here
mov bx,01600h   ; even numbers will be stored here
mov dl,02h
mov cl,0Ch      ; length of the numbers
go:mov al,[si]
div dl          ; divides al by dl
cmp ah,00h      ; checks wheather reuslt is 0 or not
je label2       ; if result is zero then jump to label2 it means number is even
; otherwise the number will be odd
mov al,[si]
mov [di],al
inc di
inc si
jnz go  
;if the number is event then 
label2:mov al,[si]
mov [bx],al
inc si
inc bx
dec cl
jnz go
hlt
           ; halt!



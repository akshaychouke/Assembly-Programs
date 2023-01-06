mov cl,05h   ; the number till the series to be printed
mov si,1400h ; the memory location where series will be stored
mov al,00h
mov bl,01h
mov [si],al  ; stores the first number 
inc si
mov [si],bl  ; stores the second number
l1:add al,bl
mov dl,al
inc si        ; increments the si by one to store the next number
mov [si],dl   ; stores the rest of the numbers
mov al,bl     ; will change the second number as first 
mov bl,dl     ; it will change the result as second number
loop l1       ; repeats untill cl becomes zero
HLT           ; halt!



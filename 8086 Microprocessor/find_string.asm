mov [1000h], 01h
mov [1001h], 06h
mov [1002h], 09h
mov [1003h], 11h
mov [1004h], 21h
mov [1005h], 27h
mov [1006h], 04h
mov [1007h], 19h
mov [1008h], 0Eh
mov [1009h], 8Eh
mov di,1000h
mov cl,0Ah ; length of the string 
mov al,19h ; number which is to be find in string
cld        ; clears direction flag
repne scasb ; repeats untill string found or cl becomes 0
HLT           ; halt!

;if the string is not found then the cl will be zero
;otherwise subtract the availabel cl value from the length of the string to get the index


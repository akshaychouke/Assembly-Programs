mov ax,00h  ;result will be stored in ax as multiplication of two 8 bits number will be 16 bit 
mov cl,06h   ;multiplier
mov bl,20h    ;multiplicand
mov [1400h],bl
label:dec cl
add ax,[1400h] ; adds the content of memory location with the ax register value
cmp cl,00h
jne label      ; it will repeat the label untill cl becomes 0 
HLT           ; halt!



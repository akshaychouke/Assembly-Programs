mov [0200h],38h  
mov [0201h],47h
mov [0202h],02h
mov [0203h],11h
mov [0204h],29h
mov [0205h],34h 
mov cl,05h
again:mov dl,cl
mov si,0200h
up:mov al,[si]
inc si
mov bl,[si]
cmp al,bl
jle next
xchg al,bl
mov [si],bl
dec si
mov [si],al
inc si
next:dec dl
jnz up
dec cl
jnz again
mov al,[200h]
mov bl,[200h+5h]
HLT           ; halt!



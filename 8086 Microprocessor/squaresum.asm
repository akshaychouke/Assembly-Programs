; this program calculates the sum of the squares of given natural number 
mov [600h],06h
mov cx,[600h]
mov bx,0000h
l1:mov ax,cx
mul ax
add bx,ax
loop l1
mov [500h],bx
HLT           ; halt!



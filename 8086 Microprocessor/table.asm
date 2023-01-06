; this program calculates the tabel of the number stored in al
mov ax,02h
mov bx,01h
mov cx,0Ah
mov di,1500h
xyz:mul bx
mov [di],ax
inc di
inc bx
mov ax,02h
loop xyz
HLT           ; halt!



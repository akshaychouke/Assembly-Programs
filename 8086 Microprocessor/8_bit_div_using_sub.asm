mov al,20h ;dividend
mov bl,03h ;denominator
mov cl,00h ;Quotient  and remainder will be in al
label:inc cl
cmp al,bl
jl label2   ;jump to label2 if al is less than bl
je label1   ;jump to label1 if both are equal 
sub al,bl   ;subtract bl from al and store the result in al
jns label   ; jump to label if there is no sign bit simply it loops until found negative number
label1: sub al,bl
inc cl
label2:dec cl
HLT           ; halt!



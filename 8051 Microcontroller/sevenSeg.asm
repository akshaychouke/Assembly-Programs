org 0000H
START:CLR A
	MOV R1,#00H
	MOV DPTR,#SEVSEG		;used to see the lookup tabel
MAIN:MOVC A,@A+DPTR
	MOV P2,A
	LCALL DELAY
	INC R1
	MOV A,R1
	CJNE A,#0AH,MAIN		;compare and if not equal then jump
	SJMP START				; to run infinite loop
	
SEVSEG: DB 0C0H				; look_up tabel for hex of number from 0 to 9
		DB 0F9H
		DB 0A4H
		DB 0B0H
		DB 99H
		DB 92H
		DB 82H
		DB 0F8H
		DB 80H
		DB 90H

DELAY:MOV R2,#8
	L2:MOV R4,#250
	L3:MOV R4,#250
	L4:DJNZ R4,L4
	   DJNZ R3,L3
	   DJNZ R2,L2
	   RET
	   END
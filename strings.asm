	AREA STRINGS,CODE

	LDR R1,=SOURCE
	LDR R2,=STRING
	MOV R3,#0
	MOV R4,#0
	BL FINDSOURCE_LEN
RPT
	LDRB R0,[R1]
	LDRB R4,[R2],#1
	CMP R4,#0
	BEQ GO
	CMP R0,R4
	BNE RPT
	MOV R5,R3
	SUB R5,#1
	MOV R6,R1
	MOV R7,R2
LOOP
	LDRB R0,[R6,#1]!
	LDRB R4,[R7],#1
	CMP R0,R4
	BNE RPT
	SUBS R5,#1
	BNE LOOP
	ADD R9,#1
	B RPT
GO 	BAL GO

FINDSOURCE_LEN
	LDRB R4,[R1],#1
	CMP R4,#0
	ADDNE R3,R3,#1
	BNE FINDSOURCE_LEN
	SUB R1,R3
	SUB R1,#1
	BX LR
SOURCE DCB "TROUBLE",0
STRING DCB "DON`T TROUBLE TROUBLE IF YOU TROUBLE TROUBLE TROUBLE TROBULE TROUBLE YOU",0
	END
	
	AREA BUBBLE,CODE
	LDR R0, =ARRAY
	LDMIA R0, {r1-r5}
	LDR R0, =array
	STMIA R0, {r1-r5}
	
	LDR R0,=N
	LDRB R1,[R0]   ;,#N
	SUB R1,R1,#1
NEXT_PASS
	MOV R2,R1
	LDR R3,=array
NEXT_CMP
	LDR R4,[R3],#4
	LDR R5,[R3]
	CMP R4,R5
	STRPL R4,[R3]
	STRPL R5,[R3,#-4]
	MOVPL R6,#1
NO_EXCHANGE
	SUBS R2,R2,#1
	BNE NEXT_CMP
	CMP R1,#6
	BEQ GO
	SUBS R1,R1,#1
	BNE NEXT_PASS
GO 	BAL GO
N DCB 5
ARRAY DCD 5,4,3,2,1
	AREA ARR,DATA
array space 20
	END

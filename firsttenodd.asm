	 AREA firsttenodd,CODE,READONLY
	 MOV R0,#1	    ;ODD NUMBERS
	 MOV R1,#0	    ;COUNTER
	 MOV R2,#0	    ;SUM
NEXT ADD R2,R2,R0   ;ADD ODD NUMBER TO SUM
	 ADD R0,R0,#2   ;CALCULATE NEXT ODD NUMBER
	 ADD R1,R1,#1   ;INCREEMENT COUNTER
	 CMP R1,#10     ;TERMINATING CONDITION
	 BNE NEXT		;BRANCH IF NOT EQUAL
GO   B GO
	 END
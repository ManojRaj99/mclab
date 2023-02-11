		AREA 5square,code,readonly
		mov r0,#0
		mov r1,#1
next	BL sqr
		add r0,r0,r2
		add r1,r1,#1
		cmp r1,#6
		bne next 
go b go
sqr 	mul r2,r1,r1
		BX LR
		end
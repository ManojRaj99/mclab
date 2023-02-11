		area ncr,code,readonly
		mov r0,#6
		mov r1,#3
		bl fact
		mov r3,r2
		mov r0,#6
		sub r0,r0,r1
		bl fact
		mov r4,r2
		mov r0,r1
		bl fact
		mul r4,r2,r4
		mov r5,#0
sub_again
		subs r3,r3,r4
		addpl r5,r5,#1
		bpl sub_again
		ldr r0,=0x40000000
		str r5,[r0]
go	b	go
fact
		mov r2,#1
next
		cmp r0,#0
		mulgt r2,r0,r2
		subgt r0,r0,#1
		bne next
		bx lr
		end
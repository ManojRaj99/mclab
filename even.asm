	 area even,code,readonly
	 mov r0,#2
	 mov r1,#0
	 mov r2,#0
	 mov r3,#0x40000000
next add r2,r2,r0
	 add r0,r0,#2
	 add r1,r1,#1
	 cmp r1,#10
	 bne next
	 str r2,[r3]
go b go
	 end

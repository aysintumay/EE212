ORG 0
MOV P2, #10H

FIRST:
	 MOV  A,  P2
	
	MOV P0, A
	ACALL DELAY
	SJMP FIRST 

	
DELAY: MOV TMOD, #02H ;timer 0 mode 2
	MOV TH0, #0A4H
	MOV  TL0, #0A4H
	
	SETB TR0
AGAIN:	JNB TF0, AGAIN
	
	CLR TF0
	ret
DELAY2: MOV TMOD, #02H ;timer 0 mode 2
	MOV TH0, #0D2H
	MOV  TL0, #0D2H
			
	SETB TR0
AGAIN2:	JNB TF0, AGAIN2
	
	CLR TF0
	ret
END
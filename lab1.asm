
ORG 0H
	MOV R3, #50

AGAIN:	MOV R4, #50
	MOV R6,#9
	MOV R7, #4
	MOV R5, #6
HERE:	SETB P2.5
	LCALL DELAY

	CLR P2.5
LOOP1:	
	LCALL DELAY
	DJNZ R6,LOOP1
	DJNZ R3, HERE
	
HERE2:	SETB P2.5
LOOP2:	LCALL DELAY
	DJNZ R7, LOOP2
	CLR P2.5
LOOP3:	LCALL DELAY
	DJNZ R5, LOOP3

	DJNZ R4, HERE2
	SJMP AGAIN
DELAY: MOV R1,#19 ;
BACK2: MOV R2,#47 
BACK1: DJNZ R2, BACK1
      
      DJNZ R1, BACK2
      RET
END

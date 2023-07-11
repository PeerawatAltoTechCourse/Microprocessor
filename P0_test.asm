;
; AssemblerApplication1.asm
;
; Created: 8/12/2565 17:25:52
; Author : ASUS
;


; Replace with your application code

	.ORG 0

start:
    
	CALL initLED

	LDI R17,0x00
loop2:
	CALL outputLED	;5+16
	INC R17         ;1
	LDI R20,0x20
	CALL DELAY
	JMP loop2       ;3



;=============================


initLED:
	PUSH R16
	
	LDI R16,0xff
	OUT DDRA,R16
	POP R16

	RET
;==============================

outputLED:
//R17 =NUM
	PUSH R16			;2
	PUSH R17		    ;2

    LDI R16,0xff		;1
	EOR R17,R16			;1

	OUT PORTA,R17;		;1

	POP R17				;2
	POP R16				;2
	RET					;5

;16 cycles;16*0.0625=1.0
;================


DELAY:
//PARAMETER R20
	PUSH R20        ;2
	PUSH R21		;2
	PUSH R22		;2
			
D0:	LDI	R21, 200	;1
D1:	LDI	R22, 255	;1
D2:	NOP				;1
	DEC 	R22		;1
	BRNE 	D2		;2
	DEC 	R21		;1
	BRNE 	D1		;2
	DEC 	R20		;1
	BRNE 	D0		;2


	POP R22			;2
	POP R21			;2
	POP R20			;2
	RET				;5
;6+R20*(1+R21*(1+(4*R22)+1+2)+1+2)+11
;===================================

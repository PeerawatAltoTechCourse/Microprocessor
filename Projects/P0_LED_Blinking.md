**Required boards**

1.Arduino MEGA 2560 board

2.LED Board

**Assembly Language Details**

1.Explain its  functionality

<img width="121" alt="asmp01" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/4027195a-8447-41c0-9908-77e49f0e89be">

The code *starts* at address 0 (*ORG 0*) and defines a label called start.

The start label is followed by a subroutine call to *initLED*, which initializes the LED.

R17 is *loaded* with the value 0 (*LDI* R17, 0x00).

The program *enters a loop* labeled loop2.

Within the loop, it calls the subroutine outputLED.

After the subroutine call, it *increments* the value of R17 *by 1* (*INC* R17).

R20 is loaded with the value 0x20 (LDI R20, 0x20).

The program then calls *the subroutine DELAY*.

Finally, it *jumps back* to loop2 (*JMP* loop2) *to repeat the loop*.

2.The subroutine definitions

2.1 initLED subroutine


<img width="104" alt="asmp02" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/94237c16-2eea-48e6-b285-56bf6f739ee4">

The initLED subroutine is called by the main program.

It pushes R16 onto *the stack* to save its value.

R16 is loaded with the value 0xFF (LDI R16, 0xFF).

The value in R16 is then *output to the DDRA port* using the *OUT* instruction.

R16 is restored by popping its value from the stack.

The subroutine returns using the RET instruction.

2.2 outputLED subroutine

<img width="145" alt="image" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/6d8856cc-4dd0-4ab3-9da5-2a7d3d51973e">

The outputLED subroutine is called by the main program.

R16 and R17 are pushed onto the stack to save their values.

R16 is loaded with the value 0xFF (LDI R16, 0xFF).

The exclusive OR operation (EOR) is performed between R17 and R16. This operation toggles the bits in R17.

The value in R17 is then output to the PORTA port using the OUT instruction.

R17 and R16 are restored by popping their values from the stack.

The subroutine returns using the RET instruction.

2.3 DELAY subroutine

<img width="226" alt="asmp04" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/26966ef4-29d6-4ed2-8ccc-7c2ed36757a1">


The DELAY subroutine is called by the main program.

R20, R21, and R22 are pushed onto the stack to save their values. (PUSH)

The subroutine enters a loop labeled D0.

Within the loop, R21 is loaded with the value 200 (LDI R21, 200).

Another loop labeled D1 is entered, where R22 is loaded with the value 255 (LDI R22, 255).

Inside D1 loop, a NOP instruction is executed (no operation), acting as a delay.

R22 is decremented (DEC R22) and checked if it is *not equal to zero* (*BRNE* D2). If it is not zero, the loop continues.

When R22 becomes zero, the loop exits, and R21 is decremented (DEC R21).

R21 is also checked if it is *not zero* (*BRNE* D1). If it is not zero, the loop continues.

When R21 becomes zero, the loop exits, and R20 is decremented (DEC R20).

R20 is checked if it is not zero (BRNE D0). If it is not zero, the loop continues.

Once R20 becomes zero, the delay subroutine exits.

The values of R20, R21, and R22 are *restored* by *popping* their values *from the stack*.

The subroutine returns using the RET instruction.




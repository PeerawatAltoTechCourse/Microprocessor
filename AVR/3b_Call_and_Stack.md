**3.1 CALL instruction and Stack**

**Call**

<img width="420" alt="image" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/09755ae7-03c8-420e-a71e-58bb0ca0cfcd">

- The CALL instruction is used to invoke a subroutine or function in a program.

- When the CALL instruction is executed, the address of the next instruction (the return address) is automatically *pushed onto the stack*.

- The program control is transferred to the address specified in the CALL instruction, which typically points to the start of the subroutine.
  
- The instructions within the subroutine are executed. These instructions can perform specific operations, manipulate data, and modify registers or memory locations.

- When the end of the subroutine is reached, a RET (return) instruction is usually executed to indicate that the subroutine is complete and control needs to be transferred back to the calling code.

- The RET instruction pops the return address from the stack, allowing the program to know where to continue execution after the subroutine call.

- The program control is then transferred to that address, and execution resumes from that point onward.

**Stack**


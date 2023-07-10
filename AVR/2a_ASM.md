**2.5 Assembly directives** 

= pseudo-instructions , It's directives for assembler and more readable

_.EQU(equate)_

- to define a constant value

- or to define a fixed address

- once of changing , It change all occurrences

_.SET_

- is identical to .EQU but we can reassign it later

_.ORG_

- is indicate the begining of the "address"

_.INCLUDE directive_

- add the contents of a file of the AVRs to our program


**2.6 Intro to AVR assembly programming**

- CPU can work only in binary (0s and 1s , machine language) at very high speed

- Assembly languages provided mnemonics for machine code instructions

**Structure of assembly language**

<img width="448" alt="cons" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/498a1314-0424-4f1f-9e3b-fae889c7feef">

_1.Label:_ 

- The label field is optional and is used _to mark a specific location or point of interest_ within the code.

- It provides a way to refer to "memory addresses or jump targets."

- Labels are typically defined at the beginning of an instruction line followed by a colon (:) and must be "unique" within the program.

- They can be used for branching instructions (e.g., jumps and branches) or for addressing memory locations.

_2.Mnemonic:_ 

- The mnemonic field is _a symbolic representation of the operation or instruction to be executed by the processor_.

- It specifies the operation or action to be performed, such as data manipulation, arithmetic calculations, branching, or I/O operations. 

- Examples of mnemonics include "ADD" (addition), "MOV" (move), "JMP" (jump), "CMP" (compare), and so on.

_3.Operands:_ 

- The operands field specifies _the data or values that are operated on by the instruction._

- It represents the inputs or outputs of the instruction. 

- Operands can take different forms depending on the specific instruction and architecture. 

- They can include immediate values (constants or literals), register operands (general-purpose registers that hold data), memory operands (data stored in memory), or a combination of these. 

_4.Comment:_ 

- Comments are ignored by the assembler and are meant for human readers. 



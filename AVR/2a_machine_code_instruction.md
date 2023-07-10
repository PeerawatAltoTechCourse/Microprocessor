**Machine Code Instruction**

![MachCdInstrct](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/7a358ae5-a9c3-4ab9-b347-21b12b03bc9c)

![MachCdInstrct1](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/f2b04535-2449-4eba-9c2c-4358108fdee9)

![MachCdInstrct2](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/7498a9b5-d4c2-4fa1-8870-3a33af1514f9)

![MachCdInstrct3](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/21367edb-e73d-4230-a79d-0ee225a34f23)

![MachCdInstrct4](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/1adfdf95-9989-433b-8fd7-5e00c568bc2a)

Program counter 

= the most important register in AVR microctrller 

used by the CPU to point to the address of the next instruction to be executed

as the CPU fetches the opcode from the program ROM , the PC is point to the next instruction

The wider the PC , the more memory location the CPU can access.

a 14-bit PC can access a maximum of 16K (2^14 = 16K) program memory location

**
The Machine Code for instruction
Placing code in program ROM
Execute a program instruction by instruction
ROM width in the AVR
Fetch-Decode-Execute Cycle
**

The Machine Code for instruction

instruction format has three fields

Addressing Mode 

- The data that is operated by the CPU can either be stored in the main memory RAM 

- It can be located in the CPU register

- It directs the CPU "to locate the data operand" as specified in the machine instruction format

OPCODE , operation code 

- During the program execution , the instruction is fetched into "the instruction register"
("Instruction register(IR)", the 14 -16 part of the IR used to store opcode)

Operand , 

specify either data or the address of the data



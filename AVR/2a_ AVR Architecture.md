 **2.AVR Architecture and Assembly Language Programming by ATMEGA 328p Arduino Uno**

**_2.0 Total Reviews for AVR's CPU_**

 ![2a](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/aa4873d6-5954-4b95-9f4d-2057ad826e52)

![2a1](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/b0a162ae-90fb-4f41-8d35-8f3cf0561a0b)


- _The AVR CPU_ consists of several key elements:

1. ALU (Arithmetic Logic Unit): 

- The ALU is responsible for _performing arithmetic and logical operations_.

- It can perform operations like addition, subtraction, bitwise AND/OR/XOR, shifting, and comparison.

 2. General Purpose Registers:

- The AVR CPU has _32 general-purpose registers (R0 to R31)_ , each of which can store an 8-bit value.

- These registers are used for _temporary storage_ , _holding variables_ , and performing _computations_.

3.PC (Program Counter) Register: 

- The PC register _stores the memory address of the next instruction to be executed_ . 

- It keeps track of the program flow by _pointing to the current instruction during execution_. 

- After executing an instruction, the PC is _updated to point to "the next instruction" in memory_.

4.Instruction Decoder: 

- The instruction decoder is responsible for _decoding the instructions fetched from memory_. 

- It "interprets" _the binary instruction_ and determines the specific operation to be executed by the CPU.

- The instruction decoder understands the instruction format and _controls the flow of data between registers, ALU, and memory._

[more]

- The AVR CPU follows _a Harvard architecture_, where separate program memory and data memory spaces are used. 

- Instructions are fetched from the program memory, and data is stored and accessed from the data memory. 

- The CPU fetches instructions sequentially, incrementing the PC register to move to the next instruction.

- The AVR instruction set is designed to be efficient, offering a variety of instructions that can _perform complex operations with minimal instruction count_.

- It includes instructions for data movement, arithmetic and logic operations, branching and looping, and accessing memory.

- The combination of the ALU, general-purpose registers, PC register, and instruction decoder forms the core of the AVR CPU.

- Together, they enable the execution of instructions and the manipulation of data, allowing the microcontroller to perform a wide range of tasks efficiently.


**How all above components working together**

1.Instruction Fetch: 

- The CPU _"fetches" the next instruction_ from program memory using the address stored in the PC (Program Counter) register.

2.Instruction Decode:

- The instruction fetched from memory is passed to the instruction decoder. 

- The decoder "analyzes" the instruction's binary representation and determines the specific operation to be performed.

3.Operand Fetch: 

- Depending on the instruction, the decoder may need to fetch "operands" from data memory or registers.

- The required data is loaded into the appropriate registers.

4.ALU Operation: 

- The ALU performs the necessary arithmetic or logical operation on the operands.

- This can include operations like addition, subtraction, logical AND/OR/XOR, shifting, or comparison.

5.Result Storage: 

- The result of _"the ALU operation" is stored back into a register or memory location_, depending on the instruction and the desired outcome.

6.Program Counter Update:

- After executing an instruction, _the PC register is "updated" to point to the next instruction in memory_. 

- This allows for sequential execution of instructions unless a branching or looping instruction alters the program flow.

7.Looping/Branching:

- The CPU checks for conditions specified by "branching" instructions, such as conditional "jumps or loops".

- If the conditions are met, the PC is "updated" to a new address, and the execution continues from that point.

8.Repeat: 

- The above steps are repeated for each instruction in the program, allowing the CPU to execute a series of instructions and perform the desired tasks.

**2.1 General Purpose Registers in the AVR**


<img width="303" alt="gprs_alu" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/de915dd0-2205-495b-885b-a28dfee768a8">


- In AVR microcontrollers, the general-purpose registers are a set of 32 registers labeled as R0 to R31.

-   Each register is 8 bits wide, allowing them to store 8-bit values.

-   These registers are an essential part of the AVR architecture and play a crucial role in **data manipulation and temporary storage** during program execution.

Here are some key points about the general-purpose registers in AVR:

1.Data Storage: 

![datasto](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/95019ecd-949d-415d-8fab-34285fa4779f)


- The general-purpose registers are used to **store data during program execution.** 

- They can hold variables, intermediate results, and operands for arithmetic and logical operations.

2.Register-File Architecture: 

- The AVR CPU follows a register-file architecture, where the general-purpose registers are directly accessible to the CPU. 

- This design choice provides _fast access to data_ and _efficient execution of instructions_.

3.Temporary Storage: 

- The general-purpose registers _act as "temporary storage locations" for data during "the execution of instructions"_. 

- Data can be loaded from memory or other registers into the general-purpose registers for processing.

4.ALU Operations:

<img width="354" alt="alu1" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/a6029f48-ac20-4d43-b00f-bd91600b06d7">

![alu3](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/9e29c44f-d502-45f0-8955-10f3d65f2d33)

![alu4](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/041bc303-6125-4e65-8925-50a764a15061)




- The ALU (Arithmetic Logic Unit) performs arithmetic and logical operations on data stored in the general-purpose registers.

- The results of these operations are often stored back in the registers for further processing or to be stored in memory.

5.Parameter Passing:

- The general-purpose registers are commonly used for **parameter passing between different parts of a program**, such as passing arguments to functions or storing return values.

6.Register Pairing: 

- Some instructions in the AVR instruction set work with register pairs, combining two adjacent general-purpose registers to create a 16-bit value.

- This allows for operations on larger data types or memory addresses.

7.Register Usage:

- While all general-purpose registers are available for use by programmers, some registers have specific purposes or conventions associated with them.

-   For example, R0 is typically used as "a zero register", R1 is often used as the "stack pointer", and R16 to R31 are often used for general "data storage".
  

![ldi](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/f49d2181-f244-42aa-ad48-3e8a14de06c4)


![operation](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/9efb33af-d444-451d-9a28-069a34482701)



**2.2 Data Address space**

In AVR microcontrollers, the data address space is divided into three main sections: General Purpose Registers (GPRs), I/O Memory, and Internal Data SRAM. Here's an explanation of each section:

_1.General Purpose Registers (GPRs):_ The GPRs provide fast and efficient data storage for temporary variables and computations. 

- The AVR architecture provides 32 general-purpose registers (R0 to R31), which are located in the CPU itself. 

- These registers are directly accessible to the CPU for fast data manipulation and temporary storage during program execution. 

- The GPRs are primarily used for general-purpose data storage, arithmetic and logical operations, and parameter passing between different parts of the program. 

- They are typically utilized for fast data processing, as they offer quick access and efficient register-based operations.

_2.I/O Memory:_ The I/O Memory enables communication with external devices and peripherals. 

- The I/O Memory space is a section of **the AVR's address space** specifically reserved for _input and output operations._ 

- It consists of _a range of memory addresses_ dedicated to _interfacing with external devices_, such as sensors, actuators, communication modules, and other peripherals.

- The I/O Memory is used to _read input data from external devices or write output data to them_.

- Each memory address within the I/O Memory corresponds to _a specific peripheral or register_ , which can be accessed using specialized I/O instructions.

_3.Internal Data SRAM:_ The Internal Data SRAM serves as a larger storage area for program data that needs to persist throughout the program execution. 

- The Internal Data SRAM (Static Random-Access Memory) is a section of memory located on the microcontroller chip itself. 

- It provides _a storage area for variables, arrays, and other data_ used by the program during runtime. 

- The size of the Internal Data SRAM varies depending on the specific AVR microcontroller model but typically ranges from _a few hundred bytes to a few kilobytes_.

- This memory space is volatile, meaning its contents are lost when power is turned off. 

- The Internal Data SRAM is commonly used for _storing program variables, stack space, buffers_, and other data that requires random access and quick read/write operations.

**2.3 Using Instruction with data memory**

**LDS instruction**

<img width="324" alt="lds0" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/cd7c548d-65eb-4aaa-a3f6-9c55b1b3c646">


<img width="325" alt="lds" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/5dc473df-6353-45ba-9d8a-cd5f885bd314">



- The LDS instruction allows you to load a value from a specific memory address into a register for further processing or manipulation.

- It is commonly used when accessing data stored in global variables or data structures in the program.

**The STS instruction**

<img width="327" alt="sts" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/1895bab1-d87b-4812-94b8-f8c06244211c">


- Allows you to store the value from a register into a specified memory location in data memory.
 
- It is commonly used to update the value of a global variable or write data to a specific memory location.

**IN instruction**
<img width="305" alt="in" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/c522b80c-2045-4437-8548-bb6054828fef">


<img width="337" alt="in_vs_lds" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/38baa595-eebb-4657-9b38-11ee118d8a70">


**more**

<img width="280" alt="more" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/4e4bc4d7-bdbc-4eac-b2e9-94d33a3fadac">


**2.4**







**Intro to Assembly**

![2_1](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/c955d32d-0e34-402f-94aa-ff8750e8ccf6)

**LDI**

- LDI stands for "Load Immediate"

- An Instruction used in _Assembly language Programming_ for microcontroller , including _ADR_

- It's used to _load an immediate value_ which is a constant or literal value, _into a register._

-  the LDI instruction : **LDI destination_register, immediate_value**

-  _1.destination_register_: This _specifies the register_ where _the immediate value will be loaded_. It is usually denoted by a register name or number. For example, R16 represents register 16.

- _2.immediate_value_ : This is _the constant value that will be loaded into the destination_register._ The immediate value is typically expressed in hexadecimal, decimal, or binary format. It can be a literal value or an expression.

- _example_

  **LDI R16, 0xFF**

In this example, the LDI instruction is used to load the immediate value 0xFF (hexadecimal) into register R16. After executing this instruction, R16 will contain the value 0xFF.

![2_2](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/bbc30f79-dd6d-4ab2-8d55-281301635c59)

![2_3](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/952d08ba-4d4d-47ef-bd03-f072f0bf5de7)

![2_4](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/c041c4a2-69eb-4094-90f0-8a1d9a0b0e74)

![2_5](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/6463f2b8-40bd-4b2f-afa9-38ff4cbcae3e)

**Data Address Space**

![2_6](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/342b5b4e-2179-4dcc-aed7-cf14c7d4d1b1)

_1.Memory Cells_ :

- The data address space is divided into individual memory cells,
  
- Each of which stores a fixed-size unit of data.

- The size of a memory cell is determined by the computer's architecture and the chosen data representation (e.g., bytes, words, or double words).

_2.Address Range_ : 

- The data address space is represented by a range of memory addresses.

- The lower bound of this range is typically denoted as the base address, while the upper bound represents the highest address in the data address space.

- The size of the address range determines the maximum amount of data that can be stored in the memory.

_3.Addressable Units_ : 

- Each memory cell in the data address space is assigned a unique address.

- These addresses allow the computer's processor to access and manipulate individual data values stored in the memory.

- The size of an addressable unit is determined by the memory architecture and can range from a single byte to multiple bytes.

_4.Variable Storage_ : 

- Variables and data structures defined in a program are allocated memory within the data address space.

- The compiler or interpreter determines the size and layout of variables based on their data types, and assigns memory locations accordingly.

- The addresses of these variables are used to access and manipulate their values during program execution.

_5.Stack and Heap_ : 

- Within the data address space, specific regions are often reserved for the stack and heap. 

- The stack is typically used for _managing function calls, local variables, and automatic memory allocation_

- The heap is used for _dynamic memory allocation, such as allocating memory for objects or data structures at runtime._

_6.Segmentation and Paging_ : 

- To divide the data address space into smaller logical units.

- These techniques allow for _efficient_ memory allocation, protection, and virtual memory management.

![2_8](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/e2688ba5-8cbc-4feb-bc59-a6a645e24179)


**LDS (load direct from data space)**

![2_7](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/e21e3c53-a349-4f24-84bb-daa71f4d98ab)

- LDS is used _to load a value_ directly from the _data memory space into a register_.

- AVR microcontroller-SRAM , LDS is used for storing _variables_ , _arrays_, and other data during program execution.

- The LDS instruction provides a convenient way _to load data directly from the data memory space without the need for intermediate steps._

- It is especially useful when dealing with _specific memory-mapped hardware registers._

- Accessing variables stored in _specific memory_ locations within _the data memory space_.

- SYNTAX : **LDS Rd, k**

- _Rd_ is the destination register where the data will be loaded

- _k_ is the 16-bit _immediate value_ specifying the memory address from where _the data will be fetched._

- The LDS instruction executes in _two machine cycles_ and requires _two bytes of program memory_. During execution,

- It performs the following steps:

  1. The 16-bit _immediate value k_ is used as an _index_ to access the data memory space
     
     - This immediate value represents the memory address from where the data will be fetched.
       
     - In AVR microcontrollers, the data memory space ranges from 0x0000 to 0x10FF (or higher, depending on the specific AVR variant).
  2. The value stored in the memory location specified by k is _loaded into the destination register Rd._

 _example_ : LDS R16, 0x0100

 - This instruction loads the value from the memory location with address 0x0100 into register R16.

 - The value stored at address 0x0100 will be copied into register R16

 - making it available for further processing or use in the program.

**STS(Store direct to data space)**

![2_7_1](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/45b7d89e-7068-4a12-b292-7d595b791bc4)

- STS is used to _store a value_ directly into _a memory location_ within _the data memory space_.

- The data memory space refers to the general-purpose SRAM (Static Random Access Memory) used for storing variables, arrays, and other data during program execution.

- The STS instruction allows you to store a value from a register into a specific memory address within the data memory space.

_SYNTAX_ : STS k, Rr

- k is the 16-bit immediate value representing the memory address where the data will be stored

- Rr is the source register containing the data to be stored.

- The STS instruction executes in two machine cycles and requires three bytes of program memory. During execution, it performs the following steps:

  1. The 16-bit immediate value k is used as an index to access the data memory space. This immediate value represents the memory address where the data will be stored.
     
  2. The value stored in the source register Rr is stored into the memory location specified by k.

_EXAMPLE_ : STS 0x0100, R16

- This instruction stores _the value from register R16_ into _the memory location with address 0x0100._

- The value stored in register R16 will be copied into the memory location specified by the address, overwriting any previous value stored there.



**IN (IN from I/O location)**
![2_9](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/7c37a63d-d1fe-42a0-ab3a-b1f2e70bdcb9)

- The instruction IN (IN from IO location) is used to read the value from a specific IO (Input/Output) register into a register within the CPU.

- AVR microcontrollers have a set of IO registers that provide access to various hardware peripherals and external devices connected to the microcontroller.

- The IN instruction provides a way to read the state of specific IO registers

- which are often used to interface with external devices or control various hardware peripherals in the microcontroller.

- By reading the values from IO registers, the microcontroller can receive input from external sources or monitor the status of connected devices.

_SYNTAX_ : IN Rd, A

-  Rd is the destination register where the data will be stored

-  A is the 6-bit IO address representing the specific IO register from which the data will be read.

-  The IN instruction executes in _one machine cycle_ and requires _one byte of program memory_. During execution, it performs the following steps:

  1. The 6-bit IO address A is used to _select the specific IO register_ to read from. The _IO address represents the location_ of the desired IO register within the IO memory space.
    
  2. The value stored in the selected IO register is read and loaded into the destination register Rd.

_EXAMPLE_

- This instruction reads the value from the IO register located at IO address 0x3F

- Then stores it into register R16.

- The data stored in the IO register will be copied into register R16


**OUT (OUT to I/O location)**

![2_10](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/fe7e0576-7ff3-4af2-9b14-2bb6ca17ac3f)

- OUT is used _to write a value_ from _a register_ to _a specific IO (Input/Output) register_.

- The OUT instruction allows you to send data from a register within the CPU to a specific IO register, thereby controlling or configuring the associated hardware or device.

- The OUT instruction provides a way to send data from the CPU to specific IO registers, allowing control over external devices or hardware peripherals.

- By writing to IO registers, the microcontroller can send output signals, configure settings, or trigger actions in connected devices or peripherals.

_SYNTAX_ : OUT A, Rr

-  _A_ is the 6-bit IO address representing the specific IO register to which the data will be written

-  _Rr_ is the source register containing the data to be sent.

-  The OUT instruction executes in _one machine cycle_ and requires _one byte of program memory_. During execution, it performs the following steps:

  1.The 6-bit IO address A is used to select the specific IO register to write to. The IO address represents the location of the desired IO register within the IO memory space.

  2.The value stored in the source register Rr is written to the selected IO register, so updating its contents.

_EXAMPLE_ : OUT 0x3F, R16

- This instruction writes the value from register R16 to the IO register located at IO address 0x3F.

- The data stored in register R16 will be sent to the specified IO register, controlling or configuring the associated hardware or device.

![2_11](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/9bf34972-2279-49da-83ee-8fa07012f480)


**How is Machine Language working with Assembly language**

![2_12](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/4c11e81b-6452-4bd6-9dd2-99e4d9f4b508)

1.Machine Language

- Machine language is the lowest level of programming language understood directly by the computer's hardware.

- It consists of binary code, represented by combinations of 0s and 1s, that directly correspond to specific operations and instructions executed by the processor.

- Each instruction in machine language has a unique binary representation, which is specific to the computer architecture.

2.Assembly Language

- Assembly language is a low-level programming language that uses human-readable mnemonics to represent machine language instructions.

- Each mnemonic corresponds to a specific machine language instruction.

- Assembly language provides a more convenient and readable way for programmers to write programs, compared to directly working with machine language.

3.Assembly Language Instructions 

- Assembly language instructions are representations of machine language instructions.

- Each assembly language instruction corresponds to a specific machine language instruction and performs a particular operation or task.

- For example, an assembly language instruction like "ADD R1, R2" may represent a machine language instruction to add the contents of registers R1 and R2.

4.Assembly Language Programming

- Assembly language programs are written using a text editor, where each line represents an assembly language instruction.

- These programs can be written to perform specific tasks, manipulate data, control hardware peripherals, or interact with the computer's operating system.

5.Assembly Language Translation 

- Assembly language programs cannot be directly executed by the computer's hardware.

- They need to be translated into machine language for the computer to understand and execute them.

- This translation is done by an assembler, which is a software tool that converts assembly language code into machine language code.

- The assembler reads the assembly language instructions, maps each instruction to its corresponding machine code, and generates an executable machine language program.

6.Execution

- Once the assembly language program has been translated into machine language, the resulting machine code can be executed by the computer's hardware.

- The processor reads each machine language instruction sequentially, interprets its binary representation, and performs the corresponding operation.

**Status Register(SREG)**

![2_13](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/5f26fcda-32cb-4633-a0de-a476db5286a2)

-  SREG is a special register that contains _status flags_ reflecting the outcome of arithmetic and logic operations.

-  The SREG register provides information about the current state of the CPU

- SREG helps in making decisions or performing conditional branching in the program.
  
- The flag bits in the SREG register are:

1. Carry Flag (C):

- SET IF operation results in a carry or borrow.

- used for multi-byte arithmetic operations or comparisons.

2. Zero Flag (Z):

- SET IF the result of an arithmetic or logical operation is zero.

- It is useful for checking conditions like equality or empty registers.

3. Negative Flag (N)

- SET IF the most significant bit (MSB) of the result of an operation is set, indicating a negative result.

4. Overflow Flag (V)

- SET IF an arithmetic operation produces a result that _exceeds_ the range representable in the data type being used.

5.Sign Flag (S)

- This flag is equal to _the exclusive OR (XOR)_ of the negative and overflow flags.

- It indicates whether the result of an operation is _negative or positive._

6.Global Interrupt Flag (I)

- This flag controls the overall interrupt system of the AVR microcontroller. 

- When the global interrupt flag is cleared (0), interrupts are disabled, and when it is set (1), interrupts are enabled.

7.Bit 5 (Reserved) 

- This bit is reserved and has no defined functionality in the current AVR architectures.
 
- It should always be cleared (0).

8.Half Carry Flag (H)

- This flag is used in some specific arithmetic operations involving Binary-Coded Decimal (BCD) operations.

-   It indicates a carry or borrow between the lower and upper nibbles of a byte.

9.Bit 3 (Reserved)

- Similar to Bit 5, this bit is reserved and should always be cleared (0).

10. Transfer Bit (T)

- This bit is used in some specific operations for data transfer and manipulation.

11.Bit 1 and Bit 0 (Reserved)

- These two bits are reserved and have no defined functionality in the current AVR architectures. They should always be cleared (0).

![2_14](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/bf1ba0e5-0cb3-4d36-b5d8-178f1e8f3f11)


![2_15](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/9611b8bc-9ea0-47e4-bca5-bf522200c211)


![2_16](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/8bea7f15-fc52-4b10-8c1e-bb51d815f359)


![2_17](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/5d9ebfac-94ad-4cac-8c23-dc9c55422c7e)


![2_18](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/4739ded0-41a7-42a4-98e2-bff822ef37b5)

An assembler is a software tool used in computer programming to convert assembly language code into machine code or object code that can be executed by a computer's hardware.

Here's how an assembler works:

1.Input:

- The assembler takes assembly language source code as input. 

2.Lexical Analysis:

- The assembler performs lexical analysis, also known as tokenization, on the assembly code.

- This involves breaking down the source code into individual tokens or lexemes, such as mnemonics, registers, labels, constants, and directives.

- This step helps the assembler recognize and categorize the different elements of the code.

3.Parsing and Syntax Analysis:

- The assembler parses the tokens and analyzes the syntax of the assembly code.

- It checks if the instructions and directives are used correctly, identifies any syntax errors or invalid statements, and builds a corresponding internal representation of the code, such as a parse tree or an intermediate representation.

4.Symbol Table Management:

- The assembler manages a symbol table that keeps track of labels and their associated memory addresses or values. 

- Labels are user-defined names used to represent memory locations, variables, or code sections. The assembler assigns addresses or resolves references to labels in the symbol table during the assembly process.

5.Translation and Code Generation: 

- The assembler translates each assembly language instruction into its corresponding machine code representation.

- It maps the mnemonics, registers, and operands to their binary representations and generates the machine code instructions. 

- The assembler also performs calculations or adjustments to calculate memory addresses, handle relocation, and resolve any symbolic references.

6.Object Code Generation:

- The assembler generates the object code, which is the machine code representation of the assembly language program.

- Object code typically consists of a series of binary instructions along with associated metadata, such as relocation information, symbol table entries, and debugging information.
  
- The object code can be directly executed by the computer's hardware or further processed for linking and execution.

7.Output: 

- The assembler produces the output files, which may include the object code file, listing file (containing the original assembly code with line numbers and generated machine code), and potentially other auxiliary files or reports.

- These files are used for further stages of the software development process, such as linking, debugging, and deployment.

The role of an assembler is crucial in converting assembly language programs into executable machine code. It provides a bridge between human-readable assembly code and the low-level machine language understood by the computer's hardware. By automating the translation process, assemblers greatly simplify the development of low-level software and enable programmers to write code that can run efficiently on the target hardware.





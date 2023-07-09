![1](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/576812ed-3fb9-43b9-bbd4-f6be2f58fefe)
![2](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/2cddf04f-a852-4e82-b3ca-86bf16468a91)

**Memory**

![3](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/bfdb19dc-7423-44cc-860e-46f834996c40)

**ROM**

- ROM stands for Read-Only Memory

- ROM is type of memory that store data permanently.

- The data stored in ROM remains intact even when the computer is powered off.

- ROM is used to store essential software instructions that are required for the computer to initialize various hardware components.

- Examples , BIOS (Basic Input/Output System) in computers,  game consoles.

- Storing complied codes from C language

**RAM**

- RAM stands for Random Access Memory

- RAM is a type of volatile (เปลี่ยนแปลงง่าย) memory that provides temporary storage for data that the computer is actively using.

- the data stored in RAM can be read from and written to by the computer's processor(CPU).

-  RAM is much faster _to access_ than ROM, but its _contents_ are lost when the computer is powered off

-  RAM is used by the operating system and software applications to store instructions and data that are currently in use.

- It allows for quick access and manipulation of data, which improves the overall performance of the computer.

  
![4](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/7b01d4ba-fdd8-4214-8cc5-67be2cafbca1)

**How computer works**

![5](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/481358c9-8742-45f4-91b6-b81d0c221da4)

_Components_

**1. The program counter (PC)**

- It's a register within CPU

- It _stores_ the _memory address_ of the _next_ instruction to _be fetched and executed._

- It keeps track of the current position in the program being executed.

**2. Arithmetic Logic Unit (ALU)**

- _Arithmetic Operations_ : The ALU can perform basic arithmetic calculations, including addition, subtraction, multiplication, and division. These operations involve manipulating binary numbers by adding, subtracting, multiplying, or dividing their binary representations.

- _Logical Operations_ : The ALU can perform logical operations such as AND, OR, XOR, and NOT. These operations manipulate individual bits or sets of bits and are commonly used in Boolean algebra and logical decision making.

- _Bitwise Operations_ : The ALU can perform bitwise operations, which manipulate individual bits in binary numbers. These operations include shifting bits to the left or right, rotating bits, and setting or clearing specific bits.

- _Comparison Operations_ : The ALU can compare two binary values and determine their relationship, such as equality, greater than, less than, or other comparisons. The result of a comparison operation is typically represented as a Boolean value (true or false)

**3. Instruction Decoder**

- _Opcode Extraction_ : The instruction decoder identifies and extracts the opcode, which represents the operation or instruction type to be executed. The opcode indicates the specific operation the CPU needs to perform, such as addition, subtraction, load, store, jump, or branch.

- _Operand Extraction_ : The instruction decoder extracts the operands specified by the instruction. Operands are the data values or memory addresses on which the operation will be performed. The decoder identifies the registers, memory addresses, or immediate values required for the instruction.

- _Control Signal Generation_ : Based on the opcode and operand information, the instruction decoder generates the necessary control signals that direct the CPU's components to carry out the instruction. These control signals activate various circuits and units within the CPU, such as the arithmetic logic unit (ALU), memory unit, and register files.

- _Microcode Execution (Optional)_ : In some CPUs, complex instructions are decoded into microcode, which represents a set of lower-level instructions or control signals specific to the CPU architecture. The instruction decoder may convert the original instruction into a sequence of microinstructions that are then executed by the CPU.



**Assembly Language**

_Instruction format__

![6](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/0b2291ee-64d2-4443-8b01-ac59578914a7)


![7](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/eb0cea6f-e767-470a-8afd-9d61ab3b1eb8)



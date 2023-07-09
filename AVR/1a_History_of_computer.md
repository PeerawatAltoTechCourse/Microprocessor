![01](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/93ecd334-beb7-489c-98f2-83329531f44c)

![02](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/f26ba1b5-4026-43e4-8edf-503ae890a5bd)

**The AVR architecture**
- It is known for its simplicity, low power consumption, and high-performance characteristics.
_1.CPU Core_

- The AVR architecture features an 8-bit RISC 

- The CPU core includes a set of registers, arithmetic logic unit (ALU), program counter (PC), and other control and data path elements.

-  The AVR CPU core is designed to execute instructions efficiently with a single-cycle execution time for most instructions.

_2.Registers_

- a register refers to a collection or bank of multiple D flip-flops that are interconnected and used for storing and manipulating binary data.

- The AVR architecture includes 32 general-purpose registers (R0 to R31) ), each of which is 8 bits wide.

- These registers can be used for storing data during program execution.

- Some of the registers have dedicated functions, such as the Stack Pointer (SP) and the Status Register (SREG), which contains flags indicating the status of the CPU.

_3.Instruction Set_

- The AVR architecture has a rich and efficient instruction set that includes a variety of data manipulation, arithmetic, logical, and control flow instructions.

- The instructions are typically 16 bits wide and are designed to be compact, allowing for efficient use of program memory.

_4.Memory Organization_

-  The AVR architecture has a Harvard architecture, which means it has separate program memory (Flash memory) and data memory (SRAM) spaces.

-  The program memory stores the instructions to be executed, while the data memory holds variables, stack, and other data during program execution.

_5.Interrupts_

- The AVR architecture provides a flexible and efficient interrupt handling mechanism.

- It supports both external and internal interrupts, allowing the CPU to respond quickly to events and perform context switching when an interrupt occurs.

-  Interrupt service routines (ISRs) can be defined to handle specific interrupt events.

_6.I/O Ports_

- It can be configured as input or output pins.

- These ports allow the microcontroller to interface with external devices such as sensors, displays, and communication modules.

_7.Peripherals(อุปกรณ์ต่อพ่วง)_

- timers/counters, serial communication interfaces (UART, SPI, I2C), analog-to-digital converters (ADC), and pulse-width modulation (PWM) units.

- These peripherals enhance the capabilities of the microcontroller and enable it to interface with a wide range of external devices.

_8.Power Management_

- AVR microcontrollers are designed for low power consumption.

- hey offer different sleep modes and power-saving features to minimize energy consumption during idle or low-power operation, making them suitable for battery-powered applications.

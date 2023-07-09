**2.4 SREG(status register)**

<img width="419" alt="image" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/12ffb613-9498-4031-b8df-98fcac641063">


status register = 8-bit register

So , there are D0-D7

- D0 = C , carry flag = set when there's "carry out" from D7

	C carry flag used to detect error in unsigned number

- D1 = Z , zero flag = for arithmetic or logic 
 
	If the result = 0 so Z=1

	If the result = 1 so Z=0

- D2 = N , Negative fiag 

	when D7 is represented for "sign" of numbers

	If D7=0 means the "result" is positive , so N=0

	If D7=1 means the "result" is negative , so N=1

- D3 = V , Overflow flag = detect error in signed number , when there is overflow into sign bit
  
	C carry flag used to detect error in unsigned number

	V overflow flag used to detect error in signed number

- D4 = S , Sign flag = (TRUE sign)XOR of N and V flag

- D5 = H , used for BCD 

- D6 = T , Bit copy storage , CLT and SET 

- D7 = I , Global interrupt flag knowing that master of device are SET and CLI
  
	turn interupt to the individual devices

	but interrupt do never service if you don't turn on the master of 	device

- Goal , understand overflow and carry
  
	intuitively indentify carry and overflow condition

	differences between microcontroller set the flags when you doing 	ADD and SUB

- AVR microcontrl only knows one and zero , It doesn't know wheter if it's signed or unsigned interpretation 

![sreg5](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/ac3e2655-5f03-45c3-a254-34d4c917c28a)

![sreg2](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/28e5024a-c82d-4aab-8999-4f4effa694ac)

![sreg3](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/0c83cbb0-8a7f-4308-ace2-65ca22b2c105)

![sreg4](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/fc5fdb5e-d9b0-46b3-b4c6-6dd2043c9eac)



 

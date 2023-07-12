**Delay**

<img width="91" alt="delay" src="https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/359ea79d-3b9a-43d8-855c-fdec736baf86">


- A "delay subroutine" is  designed to introduce a delay or pause in the execution of the program for a specified period of time.

- It is commonly used in microcontroller programming to introduce delays between operations, control timing requirements, or create time intervals in the program flow.

-  the delay subroutine utilizes *a loop that decrements* the value of **register R1** until it *reaches zero*.

-  The exact delay achieved by the subroutine depends on factors such as the loop iteration time, clock frequency, and the initial value set for R1. By adjusting these parameters, you can control the duration of the delay.The BRNE instruction is used to check if R1 is not equal to zero.

-  And if so (Equal to zero), it branches back to "the dloop" label to repeat the loop.

-  This looping mechanism creates the delay by **consuming a specific number of iterations**. (iteration = การทำซ้ำ)

- The exact delay achieved by the subroutine depends on factors such as the loop iteration time, clock frequency, and the initial value set for R1.

- By adjusting these parameters, you can control the duration of the delay.

This clip shows difference of register stack on delay subroutine

https://youtu.be/0sZEi2NjGw0

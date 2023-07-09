**IO port**

- IO port programming in AVR microcontrollers involves controlling the input and output pins of the microcontroller to interface with external devices.

-  AVR microcontrollers typically have multiple I/O ports, each consisting of several pins.

-  These pins can be configured as inputs or outputs and can be used for various purposes, such as reading sensor data, driving LEDs, or communicating with other devices.

-  To perform IO port programming in AVR microcontrollers, you typically follow these steps:

_1.Configure the direction of the pins_

- Determine whether each pin will be used as an input or an output.

- This is done by setting the corresponding bits in the Data Direction Register (DDR) for the specific port. 

- Setting a bit to 1 configures the corresponding pin as an output, while setting it to 0 configures it as an input.

_2.Set the output value_

- If a pin is configured as an output, you can set its logic level to either high or low.

- This is done by writing the desired value to the corresponding bits in the Output Register (PORT) for the specific port. 

- Setting a bit to 1 sets the pin's output to high, while setting it to 0 sets it to low.

_3.Read input value_

- If a pin is configured as an input, you can read its logic level. 

- This is done by reading the value from the corresponding bits in the Input Register (PIN) for the specific port.

- Reading a bit will give you the logic level of the corresponding pin.


**Port register role in inputing data**

![11](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/013bece1-1269-410b-99a4-b7027bbcef6e)

- Here's how the port register works for inputting data:

1.Configuring the pin as an input: 

- Before reading data from a specific pin, you need to _configure it as an input by setting the corresponding bit_ in _the data direction register (DDR)_ for that port to 0.

- This sets the pin's direction to _input mode._

2.Reading the port register: 

- To read the logic level of an input pin, you can directly access the port register associated with that pin. 

- _Reading the port register returns the current state of all input pins of the corresponding port_ with each bit representing _the logic level of a specific pin._

3.Extracting the specific pin's value: 

- Once you have read the port register, you can extract the logic level of a specific input pin by _masking and shifting operations._

- By using _bitwise operators_, you can _extract the desired bit from the port register_, which represents the logic level of the corresponding pin.

**Different status of a PIN of AVR controller**

![12](https://github.com/PeerawatAltoTechCourse/Microprocessor/assets/132571902/3cea21bd-9247-470d-b205-58c49ba62138)


- In an AVR microcontroller, a pin can have different statuses or conditions depending on its configuration and the signals applied to it.

- Here are the common statuses of a pin in an AVR microcontroller:

1.Input Floating: 

- When a pin is _configured as an input with no external signal connected to it_, it is said to be in an input floating state. 

- In this state, the logic level of the pin is _undefined and can be affected by external noise._ 

- To avoid such undefined states , _internal pull-up resistors_ can be enabled.

2.Input Pull-up:

- When a pin is configured as _an input with an internal pull-up resistor enabled_, the pin is _pulled high_ (logic level 1) internally by the microcontroller. 

- This state is useful _when connecting external devices_ that drive the pin _low to indicate a specific condition_.

3.Input Pulldown: 

- AVR microcontrollers _do not_ have internal pull-_down_ resistors. 

- However, an external pull-down resistor can _be connected_ to the pin _to pull it low_ (logic level 0) when no external signal is applied.

4.Output High: 

- When a pin is _configured as an output and set to a logic high state_ (using the Output Register - PORTx), the pin actively drives _a high voltage level_ (typically close to Vcc) on the pin. 

- This can be used to _interface_ with other devices that respond to a logic _high_ signal.

5.Output Low: 

- When a pin is configured as an output and set to a logic low state (using the Output Register - PORTx), the pin actively drives a low voltage level (typically close to ground) on the pin. 

- This can be used to interface with other devices that respond to a logic _low_ signal.

6.Tri-state: 

- Some AVR microcontrollers have the capability for tri-state operation on their I/O pins.

- In the tri-state mode, the pin can be put into _a high impedance state (disconnected)_ 

- _by configuring the corresponding bit in the Data Direction Register (DDR) to input mode._ 

- This allows multiple devices to share the same bus without interfering with each other.

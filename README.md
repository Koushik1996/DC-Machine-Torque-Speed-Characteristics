# DC-Machine-Torque-Speed-Characteristics
Developing a model that simulates the DC Machine Torque-Speed Characteristics.

DC machines are motors that use DC (Direct Current) as the source to generate mechanical energy at the shaft. The machine operates when a coil placed in a magnetic field produces torque when the current flows through it. The equivalent circuit entails a resistor, inductor and voltage supply that represents the machine's mechanics.

The machine's mechanics describe two components - one that focuses on the electrical characteristics while the other focuses on the mechanical characteristics of the motor shaft. They are governed by two main laws which are detailed below.  

Kirchoff's Voltage Law states that the sum of voltage across individual components is zero and this is used to derive the electrical characteristics.

Implying          Vin - VR - VL - VEMF = 0

                      di/dt = 1/L * ( Vin - ia * R - Ke * dtheta/dt )                                   ----> (1)

According to Newton's law, the force generated needs to overcome resistive forces and there needs to be balance.

Implying         Te - Ttheta_a - Tb - TL = 0                                                                  

                       d2theta/dt2 = 1/Jm * (Kt * ia - bm * dtheta/dt )                           ----> (2)

Then the mathematical equations (1) and (2) are modeled in Simulink to study the torque-speed characteristics of the machine.

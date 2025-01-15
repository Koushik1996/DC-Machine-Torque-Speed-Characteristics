clear all;
close all;
clc;

%% Parameter Assignment
R = input("Armature Resistance (in ohm) = "); %0.5;
L = input("Armature Inductance (in H) = "); %0.003;
Ke = input("Motor Constant (in V/(rad/sec)) = "); %0.8;
Ua = input("Supply Voltage (in V) = "); %220;
J = input("Motor Inertia (in kg m^2) = "); %0.0167;
bm = input("Friction Coefficient (in Nm / (rad/sec)) = "); %0.01;

%% Running simulation
Data = sim("DC_Machine_Characteristics.slx");

%% Unit conversion from rad/sec to RPM
RPM = Data.Speed * (60 / (2 * pi));

%% plotting
figure(1)
plot(RPM, Data.Torque)
xlabel("Speed (RPM)")
ylabel("Torque (Nm)")
grid on
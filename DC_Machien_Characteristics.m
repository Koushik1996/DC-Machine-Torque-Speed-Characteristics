clear all;
close all;
clc;

%% Parameter Assignment
R = 0.5;
L = 0.003;
Ke = 0.8;
Ua = 220;
J = 0.0167;
bm = 0.01;

%% Running simulation
Data = sim("DC_Machine_Characteristics.slx");

%% plotting
figure(1)
plot(Data.Speed, Data.Torque)
xlabel("Speed (RPM)")
ylabel("Torque (Nm)")
grid on
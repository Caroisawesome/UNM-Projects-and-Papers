clear;
clf;

Vreset = -0.065;
Vth = -0.05;
El = -0.065;
Tau_m = 0.03; % s
RmIe = 0.09; % V
V0 = Vreset;
Grsa0 = 0;
Ek = -0.07; % V
Tsra = 0.1; % s
DGrsa = 2.0;

% [spikes, risis] = integrate_and_fire( Vreset, Vth, El, Tau_m, RmIe, V0, Grsa0, Ek, Tsra, DGrsa);
% 
% plot(spikes);
% title("Tspike vs time. input= 0.09V, delta'=2.0, Vth=-0.05");
% ylabel("Spike time marker");
% xlabel("time in milliseconds");

DGrsa = 2.0;
[spikes, risis] = integrate_and_fire( Vreset, Vth, El, Tau_m, RmIe, V0, Grsa0, Ek, Tsra, DGrsa);
plot(0.0004:0.02:0.2, risis(5:200:end), '.', 'MarkerSize', 20);
hold on;

DGrsa = 1.0;
[spikes, risis] = integrate_and_fire( Vreset, Vth, El, Tau_m, RmIe, V0, Grsa0, Ek, Tsra, DGrsa);
plot(0.0004:0.02:0.2, risis(5:200:end), '.', 'MarkerSize', 20);
hold on;

DGrsa = 0.5;
[spikes, risis] = integrate_and_fire( Vreset, Vth, El, Tau_m, RmIe, V0, Grsa0, Ek, Tsra, DGrsa);
plot(0.0004:0.02:0.2, risis(5:200:end), '.', 'MarkerSize', 20);

grid on;
title("Scatter plot of Risi versus Tspike, input=0.09, delta'=1.0, Vth=-0.05, Varying Dgrsa");
xlabel("time in seconds");
ylabel("Risi (Hz)");
legend("DGrsa = 2.0", "DGrsa = 1.0", "DGrsa = 0.05");
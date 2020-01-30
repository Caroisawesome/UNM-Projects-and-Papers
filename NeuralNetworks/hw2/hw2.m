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
DGrsa = 1.0;

[spikes, risis] = integrate_and_fire( Vreset, Vth, El, Tau_m, RmIe, V0, Grsa0, Ek, Tsra, DGrsa);

% plot(spikes);
% title("Tspike vs time. input= 0.09V, delta'=1.0");
% ylabel("Spike time marker");
% xlabel("time in seconds");

% hold on;



plot(0.0004:0.02:0.2, risis(5:200:end), '.', 'MarkerSize', 20);
grid on;
title("Scatter plot of Risi versus Tspike input=0.09V, delta'=1.0");
xlabel("time in seconds");
ylabel("Risi (Hz)");
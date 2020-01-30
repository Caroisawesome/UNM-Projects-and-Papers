clear;
clf;

Vreset = -0.065;
El = Vreset;
V0 = Vreset;

Vth = -0.05;
Tau_m = 0.03; % s
Grsa0 = 0;
Ek = -0.07; % V
Tsra = 0.1; % s
DGrsa = 1.0;
Es = 0.0; % excitatory
% Es = -0.08; % inhibitory

Rm = 9e7; %ohms

Ie = 0.0;%A
ts0 = -inf;
Taus = 0.01; %seconds
RmIe = Rm*Ie;

ws = 0.9;
[avgs, stds] = integrate_and_fire2(Vreset, Vth, El, Tau_m, RmIe, V0, Grsa0, Ek, Tsra, DGrsa, Taus, Es, ws, ts0);
plot(avgs);
hold on;
plot(stds);
hold on;

ws = 0.8;
[avgs, stds] = integrate_and_fire2(Vreset, Vth, El, Tau_m, RmIe, V0, Grsa0, Ek, Tsra, DGrsa, Taus, Es, ws, ts0);
plot(avgs);
hold on;
plot(stds);

ws = 1.0;
[avgs, stds] = integrate_and_fire2(Vreset, Vth, El, Tau_m, RmIe, V0, Grsa0, Ek, Tsra, DGrsa, Taus, Es, ws, ts0);
plot(avgs);
hold on;
plot(stds);

title("Single excitatory neuron with SRA, varying weights, Ie=0.0, Es=0.0, taus=0.01");
xlabel("Synaptic Input risis (Hz)");
ylabel("Output avg risi and SD");
legend("ws=0.9 average", "ws=0.09 SD","ws=0.8 average", "ws=0.08 SD","ws=1.0 average", "ws=1.0 SD");
print("With-SRA-excitatory-weights", "-dpng");

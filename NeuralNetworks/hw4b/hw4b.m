clear;
clf;

n=2; 

ws = 0.6;
ts = -10;
Taus = 0.01; %seconds
% Es = 0.0; % excitatory
Es = -0.08; % inhibitory
% htz: the firing rate of input neurons
htz = 20.0;

[avgs, stds, xs] = integrate_and_fire( Taus, Es, ws, ts, n, htz);

plot(xs, avgs);
hold on;
plot(xs, stds);
title("Single inhibitory neuron, n = 2, w = 0.6, risis = 20.0 htz, Ie=2.1e-10");
xlabel("Fractional Shift");
ylabel("Output avg risi and SD (Hz)");
legend("Average risi", "Standard Deviation");
% ylim([0,10])
print("inhibitory-two-neuron-20hz", "-dpng");

clear;

Vreset = -0.065;
Vth = -0.05;
El = -0.065;
Tau = 0.03;
Rm = 9.0e7;

risis1 = integrate_and_fire( Vreset, Vth, El, Rm, Tau);


plot(risis1);
hold on;

Tau = 0.02;
risis2 = integrate_and_fire( Vreset, Vth, El, Rm, Tau);

plot(risis2);
hold on;

Tau = 0.04;
risis3 = integrate_and_fire( Vreset, Vth, El, Rm, Tau);

plot(risis3);
% % hold on;


legend('Tau = 0.03','Tau = 0.02','Tau = 0.04')
title("Varying Tau where Vreset = -0.065, El= -0.065, Vth = -0.05, Rm = 9.0e7");
xlabel("time in milliseconds");
ylabel("Firing Rate (Risi) in Hz");
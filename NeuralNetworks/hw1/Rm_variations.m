clear;

Vreset = -0.065;
Vth = -0.05;
El = -0.065;
Tau = 0.03;
Rm = 9.0e7;

risis1 = integrate_and_fire( Vreset, Vth, El, Rm, Tau);


plot(risis1);
hold on;

Rm = 2.0e8;
risis2 = integrate_and_fire( Vreset, Vth, El, Rm, Tau);

plot(risis2);
hold on;

Rm = 7.0e7;
risis3 = integrate_and_fire( Vreset, Vth, El, Rm, Tau);

plot(risis3);
% % hold on;


legend('Rm = 9.0e7','Rm = 2.0e8','Rm = 7.0e7')
title("Varying Rm where Vreset = -0.065, Tau = 0.03, Vth = -0.05, El = -0.065");
xlabel("time in milliseconds");
ylabel("Firing Rate (Risi) in Hz");
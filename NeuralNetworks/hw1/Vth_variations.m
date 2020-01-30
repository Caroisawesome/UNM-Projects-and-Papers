clear;

Vreset = -0.065;
Vth = -0.05;
El = -0.065;
Tau = 0.03;
Rm = 9.0e7;

risis1 = integrate_and_fire( Vreset, Vth, El, Rm, Tau);


plot(risis1);
hold on;

Vth = -0.04;
risis2 = integrate_and_fire( Vreset, Vth, El, Rm, Tau);

plot(risis2);
hold on;

Vth = -0.06;
risis3 = integrate_and_fire( Vreset, Vth, El, Rm, Tau);

plot(risis3);
hold on;


legend('Vth = -0.05','Vth = -0.04;','Vth = -0.06')
title("Varying Vth where Vreset = -0.065, El= -0.065, Tau = 0.03, Rm = 9.0e7");
xlabel("time in milliseconds");
ylabel("Firing Rate (Risi) in Hz");
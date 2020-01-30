clear;

Vreset = -0.065;
Vth = -0.05;
El = -0.065;
Tau = 0.03;
Rm = 9.0e7;

risis = integrate_and_fire( Vreset, Vth, El, Rm, Tau);



plot(risis);
title("Vreset = -0.065, Vth = -0.05, El= -0.065, Tau = 0.03, Rm = 9.0e7");
xlabel("time in milliseconds");
ylabel("Firing Rate (Risi) in Hz");
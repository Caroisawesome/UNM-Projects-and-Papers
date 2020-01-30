clear;

Vreset = -0.065;
Vth = -0.05;
El = -0.065;
Tau = 0.03;
Rm = 9.0e7;

risis1 = integrate_and_fire( Vreset, Vth, El, Rm, Tau);


plot(risis1);
hold on;

Vreset = -0.075;
risis2 = integrate_and_fire( Vreset, Vth, El, Rm, Tau);

plot(risis2);
hold on;

Vreset = -0.085;
risis3 = integrate_and_fire( Vreset, Vth, El, Rm, Tau);

plot(risis3);
hold on;

Vreset = -0.095;
risis4 = integrate_and_fire( Vreset, Vth, El, Rm, Tau);

plot(risis4);
hold on;

Vreset = -0.055;
risis5 = integrate_and_fire( Vreset, Vth, El, Rm, Tau);
plot(risis5);
hold on;


legend('Vreset = -0.065','Vreset = -0.075','Vreset = -0.085','Vreset = -0.095','Vreset = -0.055')
title("Varying Vreset where Vth = -0.05, El= -0.065, Tau = 0.03, Rm = 9.0e7");
xlabel("time in milliseconds");
ylabel("Firing Rate (Risi) in Hz");
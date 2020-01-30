function [spikes, risis] = integrate_and_fire( Vreset, Vth, El, Tau_m, RmIe, V0, Grsa0, Ek, Tsra, DGrsa)

num_steps = 2000;
dt = 0.0001;
Grsa = Grsa0;

spikes = [];
tisis = [];
tisis(1) = 0;
tisis(2) = 0;
risis = [];

index = 1;
spike_index = 3;

y=V0;
num_spikes = 0;

for t = 1:num_steps-1
    
    if (y > Vth)
        y = Vreset;
        Grsa = Grsa + DGrsa;
        spikes(t) = 1;
        tisis(spike_index) = t;
        spike_index = spike_index + 1;
        num_spikes = num_spikes + 1;
    else
        
        y = y + (dt/Tau_m)*( -y + El -Grsa*(y - Ek) + (RmIe));
        Grsa = Grsa* (1 - (dt/Tsra));
    end
    
%     risi = 10000*(num_spikes/t);
    tisi = tisis(spike_index-1) - tisis(spike_index -2);
    if (tisi > 0)
        risi = 10000*(1/ tisi);
        risis(t) = risi;
        index = index + 1;
    end


end

end


function [avg_risi, std_dev] = integrate_and_fire2( Vreset, Vth, El, Tau_m, RmIe, V0, Grsa0, Ek, Tsra, DGrsa, Taus, Es, ws, ts0)

num_steps = 1000000;
dt = 0.0001;
avg_risi = zeros(50);
std_dev = zeros(50);

for htz = 1:50
    dts = (1/htz)/dt;
    ts = ts0;
    risi = [];
    tisis = [];
    tisis(1) = 0;
    tisis(2) = 0;
    index = 1;
    spike_index = 3;
    y=V0;
    num_spikes = 0;
    Grsa = Grsa0;
    
    for j = 1:num_steps-1
        t = j*dt;
        
        if (mod(j, floor(dts)) == 0) 
           ts = t; 
        end 

        if (y > Vth)
            y = Vreset;
            Grsa = Grsa + DGrsa;
            tisis(spike_index) = t;
            spike_index = spike_index + 1;
            num_spikes = num_spikes + 1;
        else
            leakage = El - y;
            electrode = RmIe;
            spike_rate = Grsa*(y - Ek);
            synaptic = ws*(y - Es)* exp((-(t-ts)/Taus));
            y = y + (dt/Tau_m)*(leakage + electrode - spike_rate - synaptic);
    %         disp(y)
            Grsa = Grsa*(1 - (dt/Tsra));
        end
    
        tisi = tisis(spike_index-1) - tisis(spike_index -2);
        if (tisi > 0)
%             disp("tisi"+ tisi);
            risi(j) = (1/tisi);
            index = index + 1;
        else
            risi(j) = 0;
        end
    end
    
    avg_risi(htz) = mean(risi);
    std_dev(htz) = std(risi); 
end

end


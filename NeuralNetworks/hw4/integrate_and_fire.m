function [avg_risi, std_dev] = integrate_and_fire(n_e, n_i, ws, htz)
 
% constants
Vreset = -0.065;
El = Vreset;
V0 = Vreset;
Vth = -0.05;
Tau_m = 0.03; % s
Rm = 9e7; %ohms
Ie = 0.0; %2.1e-10;%A
Taus = 0.01;
ts = -10;


% Initialize input neurons
Es_s = zeros(1,(n_i + n_e));
ws_s = zeros(1,n_i + n_e);
Taus_s = zeros(1,n_i + n_e);
ts_s = zeros(1,n_i + n_e);
for i = 1:(n_i + n_e)
    if (i <= n_i)
        %inhibitory
        Es_s(i) = -0.08;
    else 
        %excitatory
        Es_s(i) = 0.0;
    end
    ws_s(i) = ws;
    Taus_s(i) = Taus;
end

% setup loop params
num_steps = 2e3;
dt = 0.0001;

% interval of time between input spikes
input_tisi = (1/htz);
disp("input tisi: "+input_tisi);

% number of timesteps between input spikes
k = input_tisi/dt;
disp("K: "+k);


%for dtshift = 0:0.001:input_tisi
 %for djshift = 0:100:k  
 djshift = floor(k/n);
     
     for iadb=1:n
        ts_s(iadb) = ts;
     end
    
    % djshift number of timesteps we are shifting by
    %djshift = floor(dtshift/dt);
    %disp("djshift: "+ djshift);
    risi = [];
    tisis = [];
    tisis(1) = 0;
    tisis(2) = 0;
    spike_index = 3;
    y=V0;
    
    spike_num = 0;

    for j = 1:num_steps-1
        t = j*dt;
        
        for i = 1:(n_i + n_e)
            if (mod(j-(i*djshift), floor(k)) == 0)
               ts_s(i) = t; 
            end 
        end

        if (y > Vth)
            y = Vreset;
            tisis(spike_index) = t;
            spike_index = spike_index + 1;
            spike_num=spike_num+1;
        else
            
            electrode = Rm*Ie;
            synaptic = 0;
            for i = 1:(n_i + n_e)
               synaptic = synaptic + ws_s(i)*(y - Es_s(i))* exp(-(t-ts_s(i))/Taus_s(i));
            end
            y = y + (dt/Tau_m)*(leakage + electrode - synaptic);
        end
            
        tisi = tisis(spike_index-1) - tisis(spike_index -2);
        if (tisi > 0)
            risi(j) = (1/tisi);
        else
            risi(j) = 0;
        end
    end
    
    avg_risi = mean(risi);
    std_dev = std(risi); 

end


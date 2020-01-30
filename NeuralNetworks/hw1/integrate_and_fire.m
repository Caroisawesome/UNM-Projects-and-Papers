function risis = integrate_and_fire( Vreset, Vth, El, Rm, Tau)

    num_steps = 30000;
    dt = 0.0001;
    Max_Ie = 10;

%     num_steps = floor((end_time - start_time) / dt);
    
    risis = [];
    
    index = 1;
     for Ie = 0:1e-13:1e-9
        
       y=El;
       num_spikes = 0;
       t_prev_spike = 0;
        
       for t = 1:num_steps-1
           
            if (y > Vth)
%                 disp('reached threshold');
                y = Vreset;
                num_spikes = num_spikes + 1;
%                 isi = t - t_prev_spike;
%                 t_prev_spike = t;
           
            else
                y = y + (dt/Tau)*( -y + El + (Rm*Ie));
            end
       end
            
       
       risi = 10000*(num_spikes/num_steps);
       risis(index) = risi;
       index = index + 1;
        
    end
end


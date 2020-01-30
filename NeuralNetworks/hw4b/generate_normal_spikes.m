function spikes = generate_normal_spikes(n, num_steps, sigma)

spikes = zeros(n, num_steps);
mu = floor(num_steps/2);

count =0;
for i = 1:n
    for j = 1:num_steps
        idx = floor(normrnd(mu,sigma));
        if (idx<=0 || idx > num_steps) 
            count=count+1;
        else
            spikes(i, idx) = 1;
        end
    end
end
% disp("total not in range: "+count); 


end
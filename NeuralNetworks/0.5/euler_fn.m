function [xs, ys] = euler_fn(step_size, v_0, E )

    start_time = 0.0;
    end_time = 5.0;

    num_steps = floor((end_time - start_time) / step_size);
    Tau = 1;

    xs = linspace(0,5,num_steps);
    ys = zeros(num_steps-1,1);

    ys(1) = v_0;

    for i = 1:num_steps-1 
        ys(i+1) = ys(i) + (step_size/Tau)*( -ys(i) + E);
    end

end


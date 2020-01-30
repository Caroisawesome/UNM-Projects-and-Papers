
f = @(t) exp(-t);



num_steps = 0:5;
steps = [];
norms = [];

labels = {};
i =1;
for s = num_steps
    step = 2^(-s);
    steps(i) = step;
    labels{i} = num2str(step);
    [xs, ys] = euler_fn(step, 0, 1);
    
    err_arr = abs(f(xs) - ys');
    norms(i) = norm(err_arr);
%     plot(xs, err_arr);
    
    
    plot(xs, ys);
    i=i+1;

    hold on;
end

% title("L1 error between the actual and Euler approximation of V(t)");
% title("Pointwise error between the Euler approximation of V(t) and actual, for varying step size");
xlabel("t");
ylabel("V(t)");

title("Euler approximation where V(0) = 0, and E = 1, for varying step size");
%  plot(steps, norms); 

legend(labels);

save_plot(gcf, 'tester');
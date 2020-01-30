clear;
clf;


% firing rate of input neuron
htz = 5.0;


res10 = [];
res100 = [];
res500 = [];
xs = [];
index = 1;
for r = 1:10
    percent_inhibited = 0.2;
    percent_excited = 1 - percent_inhibited;
    
    sigma = r*20;
    disp("sigma: "+sigma);
%     disp("percent inhibited: " + percent_inhibited);
%     disp("percent excited: " + percent_excited);
    xs(r) = sigma;
    
    t1 = 10;
    n_excited = ceil(t1*percent_excited);
    n_inhibited = t1 - n_excited;
    [risi, st] = random_integrate_fire(n_excited,n_inhibited,0.07,sigma); 
    res10(r,1) = risi;
    res10(r,2) = st;
    
    t1 = 100;
    n_excited = ceil(t1*percent_excited);
    n_inhibited = t1 - n_excited;
    [risi, st] = random_integrate_fire(n_excited,n_inhibited,0.007,sigma); 
    res100(r,1) = risi;
    res100(r,2) = st;
    
    t1 = 500;
    n_excited = ceil(t1*percent_excited);
    n_inhibited = t1 - n_excited;
    [risi, st] = random_integrate_fire(n_excited,n_inhibited,0.002,sigma); 
    res500(r,1) = risi;
    res500(r,2) = st;
end

plot(xs,res10(:,1));
hold on;
plot(xs,res100(:,1));
hold on;
plot(xs,res500(:,1));

title("Integrate and fire with normally distributed random firing, while varying sigma. mu = 1000");
legend("n = 10", "n = 100", "n = 500 ");
xlabel("Sigma (standard deviation of normal distribution firing rate)");
ylabel("Average Risi of output neron (Htz)");
print("normally-random-sd", "-dpng");


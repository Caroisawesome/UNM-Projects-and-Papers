clear;
clf;


% firing rate of input neuron
htz = 5.0;

% params row:  n_excited, n_inhibited, weight, risi  

[p_rows, p_cols] = size(params);

res10 = [];
res100 = [];
res500 = [];
   
index = 1;
for r = 1:11
    percent_inhibited = (r-1) * 0.1;
    percent_excited = 1 - percent_inhibited;
    
%     disp("percent inhibited: " + percent_inhibited);
%     disp("percent excited: " + percent_excited);
    
    t1 = 10;
    n_excited = ceil(t1*percent_excited);
    n_inhibited = t1 - n_excited;
    [risi, st] = integrate_and_fire(n_excited,n_inhibited,0.7,htz); 
    res10(r,1) = risi;
    res10(r,2) = st;
    
    t1 = 100;
    n_excited = ceil(t1*percent_excited);
    n_inhibited = t1 - n_excited;
    [risi, st] = integrate_and_fire(n_excited,n_inhibited,0.07,htz); 
    res100(r,1) = risi;
    res100(r,2) = st;
    
    t1 = 500;
    n_excited = ceil(t1*percent_excited);
    n_inhibited = t1 - n_excited;
    [risi, st] = integrate_and_fire(n_excited,n_inhibited,0.02,htz); 
    res500(r,1) = risi;
    res500(r,2) = st;
end

xs = 0:0.1:1;
plot(xs,res10(:,1));
hold on;
plot(xs,res100(:,1));
hold on;
plot(xs,res500(:,1));

title("Integrate and fire with random firing. risi = 5.0 Htz, Taus = 0.01, Ie = 0.0, Tau_m = 0.03");
legend("n = 10, w = 0.7, dshift = 0.02", "n = 100, w = 0.07, dshift = 0.002", "n = 500, w = 0.02, dshift = 0.0004");
xlabel("Franction of input neurons (n) that are inhibited");
ylabel("Average Risi of output neron (Htz)");
% print("constant-shift", "-dpng");


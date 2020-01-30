tmin = -4*pi;
tmax = 4*pi;
ts = tmin:tmax;
num_ts = length(ts);

ns = [1,3,6,12,24,48];
fs = zeros(6, num_ts);

for i = 1:6
    for j = 1:num_ts
        fs(i, j) = fourrier_series(i,j); 
    end
end

plot(real(fs(6,:)),imag(fs(6,:)), 'g*');

title("Real vs Imaginary for N=48");

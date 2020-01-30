load('buchnera.mat')

h_x = 0;
for k = keys(c)
    key = k{1};
    if (c(key) > 0)
        val = c(key) * log2(c(key));
        h_x = h_x + val;
    end
end

h_x = h_x * -1;
disp(h_x);

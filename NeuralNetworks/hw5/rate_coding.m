function ys = rate_coding( )

num_steps = 5000;
dt = 0.0001;
taus = 0.1;
n = 5;

y = [0.4, 1.0, 0, 0, 0];
v = zeros(1,n);
ys = zeros(n, num_steps);

W = [ 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0;
      1, 0, 1, -1.5, 0;
      1, 1, 1, 1, -1.5;
      0, 1, 0, 1, 1;
      ];
        
for j = 1:num_steps-1
    for k = 3:n
        v(k) = v(k) + (dt/taus) * ( -v(k) + W(k,:)*y' );
        y(k) =  phi(v(k));
        ys(k, j) = y(k);
    end
end

end
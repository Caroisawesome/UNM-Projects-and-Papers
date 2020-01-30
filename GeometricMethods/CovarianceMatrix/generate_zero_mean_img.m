function [zR,zG,zB,mean]=generate_zero_mean_img(fname, display)

[R,G,B] = read_ppm(fname);

[rs,cs] = size(R);
total = rs*cs;
sum = zeros(1,3);

for r = 1:rs
   for c = 1:cs
       sum = sum + [R(r,c) G(r,c) B(r,c)];
   end
end

% Compute Mean Vector
mean = sum ./ total;

zR = zeros(rs,cs);
zG = zeros(rs,cs);
zB = zeros(rs,cs);

% Subtract mean from each of the pixels. 
for r = 1:rs
   for c = 1:cs
       zR(r,c) = R(r,c) - mean(1);
       zG(r,c) = G(r,c) - mean(2);
       zB(r,c) = B(r,c) - mean(3);
   end
end


if (display == 1)
    % Display image with zero mean
    cdisplay(zR, zG, zB);
end
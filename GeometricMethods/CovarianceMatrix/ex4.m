clear;

[zR,zG,zB, mean1] = generate_zero_mean_img('queen_butterfly_fish.ppm', 0);
C = build_covariance_matrix(zR, zG, zB);
[W, D] = eig(C);

% [R, G, B] = read_ppm('queen_butterfly_fish.ppm');
% [R,G,B] = read_ppm('cactus.ppm');
[R,G,B, mean2] = generate_zero_mean_img('queen_butterfly_fish.ppm', 0);

[rs,cs] = size(R);

% create matrix to hold transformed R, G, B values
tR = zeros(rs,cs);
tG = zeros(rs,cs);
tB = zeros(rs,cs);

% build up a data matrix of the cactus image
X = build_data_matrix(R,G,B);


% Transform each pixel in the cactus image using the matrix of eigenvectors 
%   of the covariance matrix (i.e., KL transform).
y = W'*X';

% Convert data matrix back into rgb format for ppm img.
i=1;
for r=1:rs
   for c=1:cs
       tR(r,c)= y(1,i);
       tG(r,c)= y(2,i);
       tB(r,c)= y(3,i);
       i=i+1;
   end
end

%display ppm image
 cdisplay(tR, tG, tB);
 N= length(y);
% tC = build_covariance_matrix(tR, tG, tB);
yTy = y*y';
CY = yTy ./ N;


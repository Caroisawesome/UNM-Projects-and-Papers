function X = build_data_matrix(r1,r2,r3)

[rs,cs] = size(r1);
N = rs*cs;

X = zeros(N, 3);

n=1;
for r=1:rs
   for c=1:cs
       X(n,:) = [r1(r,c) r2(r,c) r3(r,c)]; 
       n=n+1;
   end
end
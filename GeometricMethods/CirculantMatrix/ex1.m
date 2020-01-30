x = [-1,2,-3,4];

A = circulant_matrix(x);
[W, D] = eig(A);

y = [1,2,3,4]';

ans = W*D*(ctranspose(W))'*y;



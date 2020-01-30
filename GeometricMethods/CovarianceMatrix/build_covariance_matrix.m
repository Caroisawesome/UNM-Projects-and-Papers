function C = build_covariance_matrix(r1,r2,r3)

X = build_data_matrix(r1,r2,r3);

N = length(X);

xTx = X'*X;
C = xTx ./ N;
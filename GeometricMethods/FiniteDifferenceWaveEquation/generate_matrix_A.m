function A = generate_matrix_A(n)

    A = zeros(n^2);
    k = zeros(1,n^2);
    k(1) = -2;
    k(2) = 1;
    k(n) = 1;
    A = circulant(k,1);
end


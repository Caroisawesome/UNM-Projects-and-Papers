function A = circulant_matrix(x)

    n = length(x);
    A = zeros(n);

    for i=1:n
        A(:,i) = circshift(x, i-1);        
    end
end
load('acid_matrix.mat')

[num_rows, num_cols] = size(M);
transition = zeros(num_rows,num_cols);

for i=1:num_rows
    row_sum = sum(M(i,:));
    transition(i,:) = M(i,:)./row_sum;
end

save('buchnera_transition', 'transition')
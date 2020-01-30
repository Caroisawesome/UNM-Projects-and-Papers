% load('acid_matrix.mat','M')
load('acid_index_mapping.mat','index_map')
load('buchnera_transition', 'transition')
load('buchnera.mat','c')



amino_acids = keys(c);
H_Y_given_Xisxi = zeros(length(amino_acids), 1);

for a_1=amino_acids
    sum = 0;
    idx_1 = index_map(a_1{1});
    
   for a_2=amino_acids
       % pX(xi)pY|X(yj|xi)log pY|X(yj|xi).
       idx_2 = index_map(a_2{1});
       sum = sum + (transition(idx_1,idx_2) * log(transition(idx_1,idx_2)));
%         sum = sum + (transition(idx_2,idx_1) * log(transition(idx_2,idx_1)));
   end
   
   sum = -1*sum;
   H_Y_given_Xisxi(idx_1) = sum; 
end

disp(H_Y_given_Xisxi)
plot(H_Y_given_Xisxi)
set(gca,'XTick',[1:length(keys(c))])
set(gca,'xticklabel', keys(c))
title("Conditional Entropy of each Amino Acid")
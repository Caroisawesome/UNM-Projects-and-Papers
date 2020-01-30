A = importdata('buchnera_acids.txt');

index_map = containers.Map;
index = 0;
M = zeros(21,21);
prev_index = 0;
max_index = 0;

for r = 1:length(A)
    row = A{r};
    
    for l = 1:length(row)
        letter = row(l);
        stored_letters = keys(index_map);
       
        % if letter is not a member of map, add index to index map
        if (~ismember(letter, stored_letters)) 
            index = max_index + 1;
            max_index = max_index + 1;
            index_map(letter) = max_index;
        else 
            % else, get index
            index = index_map(letter);
        end 
        
        if (prev_index > 0) 
            M(index, prev_index) = M(index, prev_index) + 1;
        end
        prev_index = index;
    end
end


save('acid_matrix.mat','M')
save('acid_index_mapping.mat','index_map')




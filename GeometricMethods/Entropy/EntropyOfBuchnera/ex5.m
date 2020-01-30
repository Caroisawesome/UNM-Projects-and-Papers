A = importdata('buchnera_acids.txt');

c = containers.Map;
count = 0;

for r = 1:length(A)
    row = A{r};
    
    for l = 1:length(row)
        letter = row(l);
        stored_letters = keys(c);
        count = count + 1;
       
        if (ismember(letter, stored_letters)) 
            c(letter) = c(letter) + 1;
        else
            c(letter) = 1;
        end 
    end
end

k = keys(c);
for i = 1:length(k)
    key = k(i);
    c(key{1}) = (c(key{1}) / count);
end
    
save('buchnera.mat','c')
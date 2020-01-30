function h_x = Hx (pmf)

    h_x = 0;
    for i = 1:length(pmf)
        if (pmf(i) > 0) 
             val = pmf(i) * log2(pmf(i));
            h_x = h_x + val; 
        end
    end
    
    h_x = h_x * -1;

end
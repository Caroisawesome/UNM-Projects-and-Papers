function H_YgivenX = Hy_x(pmf_x, p_y_given_x)

    total = 0;
    
    for i=1:256 
        for j=1:256
            if (pmf_x(i) > 0 && p_y_given_x(j,i) > 0) 
                total = total + pmf_x(i) * p_y_given_x(j,i)*log2(p_y_given_x(j,i));
            end
        end
    end
    
    H_YgivenX = -1 *total;
end


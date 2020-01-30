function pmf = get_pmf(img, max_val)

    pmf = zeros(1,max_val);

    [row, col] = size(img);

    count=0;
    for r = 1:row
       for c= 1:col
           index = img(r,c)+1;
           pmf(index) = pmf(index) + 1;
           count = count + 1;
       end
    end
    
    for i = 1:length(pmf)
        pmf(i) = pmf(i)/count;
    end
    
end


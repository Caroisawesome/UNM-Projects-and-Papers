function hist = joint_hist(Px, Py)
    num_entries = 255;
    
    hist = zeros(num_entries, num_entries);
    for i=1:num_entries
        for j=1:num_entries
            hist(i,j) = Px(i) * Py(j);
        end
    end
end
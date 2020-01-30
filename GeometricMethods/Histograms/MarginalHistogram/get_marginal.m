function [G_x, G_y] = get_marginal( G_xy )
    [num_rows, num_columns] = size(G_xy);
    G_x = zeros(1, num_columns);
    G_y = zeros(1, num_columns);

    for i = 1:num_rows
        for j = 1:num_columns
            G_x(i) = G_x(i) + G_xy(i, j); 
        end
    end
    
    for j = 1:num_columns
        for i = 1:num_rows
            G_y(j) = G_y(j) + G_xy(i, j); 
        end
    end
end
function [hist] = P_x( matrix )
    hist = zeros(1, 256);
    [num_rows, num_columns] = size(matrix);
    total_cells = num_rows * num_columns;
    
    for row=1:num_rows
        for col=1:num_columns
            val = matrix(row, col);
            hist(val+1) = hist(val+1) + 1;
        end
    end
    
    for x=1:256
        hist(x) = hist(x) / total_cells;
    end
    
end